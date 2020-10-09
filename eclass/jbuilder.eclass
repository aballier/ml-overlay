# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: jbuilder.eclass
# @MAINTAINER:
# Gentoo ML Project <ml@gentoo.org>
# @AUTHOR:
# Alexis Ballier <aballier@gentoo.org>
# @BLURB: Provides functions for installing jbuilder packages.
# @DESCRIPTION:
# Provides defaut compile and test phases for jbuilder based packages.
# Uses opam.eclass for install.

inherit opam multiprocessing ocaml-deps

RDEPEND="dev-lang/ocaml:="

if [[ "${OPAM_DEPS}" = "auto" ]] ; then
	RDEPEND="$(ocaml_gen_deps ${PN})"
	IUSE="test"
	RESTRICT="!test? ( test )"
fi

case ${EAPI:-0} in
	0|1|2|3|4|5|6) die "EAPI=${EAPI} unsupported";;
	*) BDEPEND=">=dev-ml/dune-2.7 dev-lang/ocaml"; DEPEND="${RDEPEND}" ;;
esac

if [[ "${OPAM_DEPS}" = "auto" ]] ; then
	BDEPEND="${BDEPEND}
		test? (
			dev-lang/ocaml
			dev-ml/opam-file-format
			dev-ml/findlib
		)
	"
fi


# This disables Werror-like behavior
DUNE_PROFILE="release"

jbuilder_src_prepare() {
	default
	local jb=$(find . -name jbuild -type f)
	if [ -n "${jb}" ] ; then
		ewarn "${PN} still uses jbuild, upgrading it"
		dune upgrade || die
	fi
	[[ "${OPAM_DEPS}" != "auto" ]] && eqawarn "${CATEGORY}/${PN} should set OPAM_DEPS=auto"
}

jbuilder_src_compile() {
	dune build -p "${PN}" -j $(makeopts_jobs) @install || die
}

jbuilder_src_test() {
	if [[ "${OPAM_DEPS}" = "auto" ]] ; then
		pushd "${T}" &> /dev/null
		printf "%s" "${_GLOBAL_OCAML_DEPS[${PN}]}" | tr ' ' '\n' | sort -u > ebuild.deps || die
		cat << EOF >> parser.ml
open OpamParserTypes

let rec get_deps = function
		[] -> failwith "Not found"
	| Variable (_,"depends",v)::q -> v
	| _::q -> get_deps q;;
let rec is_real_dep = function
		[] -> true
	| Logop (_,_,l,r)::q -> is_real_dep (l::(r::q))
	| Ident (_,"with-doc")::_ -> false
	| Ident (_,"with-test")::_ -> false
	| Ident (_,"build")::_ -> false
	| Ident (_,"dev")::_ -> false
	| _ :: q -> is_real_dep q;;
let rec print_deps = function
		List (_,l) -> List.iter print_deps l
	| Option (_,v,l) -> if is_real_dep l then print_deps v else ()
	| String (_,"ocaml") -> ()
	| String (_,"dune") -> ()
	| String (_,"base-bigarray") -> ()
	| String (_,"base-bytes") -> ()
	| String (_,"base-threads") -> ()
	| String (_,"base-unix") -> ()
	| String (_,"conf-openssl") -> ()
	| String (_,"conf-libX11") -> ()
	| String (_,"ctypes-foreign") -> ()
	| String (_,"ctypes") -> Printf.printf "ocaml-ctypes\n"
	| String (_,"ocamlfind") -> Printf.printf "findlib\n"
	| String (_,s) -> Printf.printf "%s\n" s
	| _ -> ();;
print_deps (get_deps (OpamParser.file Sys.argv.(1)).file_contents);;
EOF
		ocamlfind ocamlc -package opam-file-format -linkpkg parser.ml  -o parser || die
		./parser "${S}/${PN}.opam" | sort -u > opam.deps || die
		diff -u ebuild.deps opam.deps || die "Difference between opam and ebuild dep"
		popd &> /dev/null
	fi

	dune runtest -p "${PN}" -j $(makeopts_jobs) || die
}

EXPORT_FUNCTIONS src_prepare src_compile src_test
