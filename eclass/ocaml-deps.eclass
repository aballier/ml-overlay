# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: ocaml-deps.eclass
# @MAINTAINER:
# Alexis Ballier <aballier@gentoo.org>
# @AUTHOR:
# Alexis Ballier <aballier@gentoo.org>
# @BLURB: Global dependencies definitions for ocaml
# @DESCRIPTION:

# Keep it sorted
# It is not readonly so that another eclass can append data here for overlays.
declare -A -g _GLOBAL_OCAML_DEPS=(
	[ANSITerminal]=""
	[alcotest]="fmt astring cmdliner uuidm stdlib-shims re uutf"
	[alcotest-async]="alcotest async_unix core_kernel"
	[alcotest-lwt]="alcotest lwt logs"
	[angstrom]="result bigstringaf"
	[angstrom-async]="angstrom async"
	[angstrom-lwt-unix]="angstrom lwt"
	[angstrom-unix]="angstrom"
	[astring]=""
	[async]="async_kernel async_rpc_kernel async_unix core core_kernel ppx_jane textutils"
	[async_js]="async_kernel async_rpc_kernel ppx_jane js_of_ocaml js_of_ocaml-ppx uri uri-sexp"
	[async_extra]="async_kernel core_kernel ppx_jane"
	[async_kernel]="core_kernel ppx_jane"
	[async_unix]="async_kernel core core_kernel ppx_jane"
	[async_rpc_kernel]="async_kernel core_kernel protocol_version_header ppx_jane"
	[async_ssl]="async base core ppx_jane stdio ocaml-ctypes dune-configurator"
	[atd]="easy-format menhir re"
	[atdgen]="atd atdgen-runtime biniou yojson"
	[atdgen-codec-runtime]=""
	[atdgen-runtime]="yojson biniou re"
	[atdj]="atd re"
	[base]="sexplib0 dune-configurator"
	[base64]="dune-configurator"
	[base_bigstring]="base ppx_jane"
	[base_quickcheck]="base ppx_base ppx_fields_conv ppx_let ppx_sexp_message ppx_sexp_value splittable_random ppxlib"
	[bigarray-compat]=""
	[bignum]="core_kernel ppx_jane splittable_random typerep num zarith zarith_stubs_js"
	[bigstring]=""
	[bigstring-unix]=""
	[bigstringaf]="bigarray-compat"
	[bin_prot]="base ppx_compare ppx_custom_printf ppx_fields_conv ppx_sexp_conv ppx_variants_conv ppx_optcomp"
	[bisect_ppx]="cmdliner ocaml-migrate-parsetree ppx_tools_versioned"
	[biniou]="easy-format"
	[bos]="rresult astring fpath fmt logs"
	[cairo2]=""
	[cairo2-gtk]="cairo2 lablgtk"
	[cairo2-pango]="cairo2 lablgtk"
	[calendar]=""
	[camlimages]="base stdio"
	[camomile]=""
	[capnp]="result base stdio ocplib-endian res stdint"
	[charInfo_width]="result camomile"
	[cinaps]="re"
	[cmdliner]="result findlib"
	[cohttp]="re uri uri-sexp fieldslib sexplib0 ppx_fields_conv stringext base64 stdlib-shims ppx_sexp_conv"
	[cohttp-async]="async ppx_sexp_conv stdlib-shims uri-sexp async_kernel async_unix base cohttp conduit-async magic-mime logs fmt sexplib0 uri"
	[cohttp-lwt]="cohttp lwt sexplib0 ppx_sexp_conv logs"
	[cohttp-lwt-jsoo]="cohttp cohttp-lwt lwt js_of_ocaml js_of_ocaml-ppx js_of_ocaml-lwt"
	[cohttp-lwt-unix]="conduit-lwt-unix cmdliner magic-mime logs fmt cohttp-lwt lwt"
	[cohttp-top]="cohttp"
	[conduit]="ppx_sexp_conv sexplib astring uri logs ipaddr ipaddr-sexp"
	[conduit-lwt]="conduit lwt sexplib ppx_sexp_conv"
	[conduit-lwt-unix]="ppx_sexp_conv conduit-lwt lwt uri ipaddr ipaddr-sexp"
	[conduit-async]="core ppx_sexp_conv sexplib conduit ipaddr async"
	[containers]="dune-configurator seq"
	[core]="core_kernel jst-config ppx_jane sexplib timezone spawn"
	[core_bench]="core core_kernel ppx_jane textutils re"
	[core_extended]="core core_kernel ppx_jane re"
	[core_kernel]="base base_bigstring base_quickcheck bin_prot fieldslib jane-street-headers jst-config ppx_assert
ppx_base ppx_hash ppx_inline_test ppx_jane ppx_sexp_conv ppx_sexp_message sexplib splittable_random stdio time_now
typerep variantslib"
	[core_profiler]="core core_kernel ppx_jane re2 shell textutils textutils_kernel"
	[cppo]=""
	[cppo_ocamlbuild]="ocamlbuild"
	[craml]="fmt astring logs cmdliner"
	[crunch]="cmdliner ptime"
	[csexp]="result"
	[cstruct]="bigarray-compat"
	[cstruct-async]="cstruct async_kernel async_unix core_kernel"
	[cstruct-lwt]="cstruct lwt"
	[cstruct-sexp]="cstruct sexplib"
	[cstruct-unix]="cstruct"
	[csv]=""
	[csv-lwt]="csv lwt"
	[csvtool]="csv uutf"
	[cudf]="extlib"
	[digestif]="eqaf stdlib-shims bigarray-compat"
	[dispatch]=""
	[dns]="rresult astring fmt logs ptime domain-name gmap cstruct ipaddr lru duration metrics"
	[domain-name]="fmt astring"
	[dose3]="cudf extlib re ocamlgraph"
	[dot-merlin-reader]="yojson findlib csexp result"
	[dtoa]=""
	[dune-action-plugin]="dune-glob dune-private-libs"
	[dune-build-info]=""
	[dune-configurator]="result csexp"
	[dune-glob]="dune-private-libs"
	[dune-private-libs]=""
	[duration]=""
	[easy-format]=""
	[expect_test_helpers]="async core expect_test_helpers_kernel ppx_jane sexp_pretty"
	[expect_test_helpers_kernel]="base base_quickcheck core_kernel ppx_jane sexp_pretty re stdio"
	[extlib]=""
	[eqaf]=""
	[ezjsonm]="jsonm sexplib0 hex"
	[ezjsonm-lwt]="ezjsonm jsonm sexplib hex lwt"
	[fileutils]="stdlib-shims"
	[fieldslib]="base"
	[findlib]=""
	[fix]=""
	[fmt]="result seq stdlib-shims uchar cmdliner"
	[fpath]="result astring"
	[gen]="dune-configurator"
	[gen_js_api]="ocaml-migrate-parsetree js_of_ocaml ppxlib"
	[gettext]="fileutils"
	[gettext-camomile]="gettext camomile"
	[gettext-stub]="gettext dune-configurator"
	[gmap]=""
	[graphics]=""
	[graphql]="graphql_parser yojson rresult seq"
	[graphql-async]="graphql async_kernel"
	[graphql-cohttp]="graphql cohttp crunch astring base64 ocplib-endian digestif"
	[graphql-lwt]="graphql lwt"
	[graphql_parser]="re fmt"
	[hex]="cstruct bigarray-compat"
	[hiredis]="lwt hiredis-value"
	[hiredis-value]=""
	[incremental]="core_kernel ppx_jane"
	[integers]=""
	[io-page]="cstruct bigarray-compat"
	[io-page-unix]="io-page cstruct"
	[ipaddr]="stdlib-shims macaddr domain-name"
	[ipaddr-cstruct]="ipaddr cstruct"
	[ipaddr-sexp]="ipaddr ppx_sexp_conv"
	[iter]="result"
	[jane-street-headers]=""
	[jsonm]="uutf uchar"
	[jst-config]="base ppx_assert stdio dune-configurator"
	[js_of_ocaml]="ocaml-migrate-parsetree ppx_tools_versioned uchar js_of_ocaml-compiler"
	[js_of_ocaml-compiler]="cmdliner yojson menhir ocaml-migrate-parsetree"
	[js_of_ocaml-lwt]="lwt js_of_ocaml js_of_ocaml-ppx"
	[js_of_ocaml-ocamlbuild]="ocamlbuild"
	[js_of_ocaml-ppx]="ocaml-migrate-parsetree ppx_tools_versioned js_of_ocaml"
	[js_of_ocaml-ppx_deriving_json]="js_of_ocaml ocaml-migrate-parsetree ppxlib"
	[js_of_ocaml-toplevel]="js_of_ocaml js_of_ocaml-compiler js_of_ocaml-ppx findlib"
	[js_of_ocaml-tyxml]="tyxml reactiveData js_of_ocaml js_of_ocaml-ppx"
	[lablgtk]=""
	[lablgtk3]="cairo2"
	[lablgtk3-gtkspell3]="lablgtk3"
	[lablgtk3-sourceview3]="lablgtk3"
	[lambdasoup]="markup"
	[lambda-term]="lwt_react lwt lwt_log zed camomile react mew_vi"
	[ldap]="pcre ssl ocamlnet"
	[logs]="result"
	[logs-async]="logs async_kernel"
	[logs-async-reporter]="logs fmt async"
	[lru]="psq"
	[lwt]="seq result mmap ocplib-endian dune-configurator"
	[lwt_glib]="lwt"
	[lwt_log]="lwt"
	[lwt_ppx]="lwt ocaml-migrate-parsetree ppx_tools_versioned"
	[lwt_react]="lwt react"
	[lwt_ssl]="lwt ssl"
	[macaddr]=""
	[macaddr-cstruct]="macaddr cstruct"
	[macaddr-sexp]="macaddr ppx_sexp_conv"
	[magic-mime]=""
	[markup]="uutf uchar"
	[markup-lwt]="markup lwt"
	[mccs]="cudf"
	[mdx]="fmt findlib astring logs cmdliner re result ocaml-migrate-parsetree ocaml-version odoc"
	[menhir]=""
	[menhirLib]=""
	[menhirSdk]=""
	[merlin]="csexp dot-merlin-reader result yojson"
	[merlin-extend]=""
	[metrics]="fmt"
	[mew]="trie result"
	[mew_vi]="mew react"
	[mirage-profile]="cstruct lwt ocplib-endian"
	[mirage-profile-unix]="mirage-profile mtime ocplib-endian"
	[mmap]=""
	[msgpck]="ocplib-endian"
	[mtime]=""
	[num]=""
	[ocamlbuild]=""
	[ocamlformat]="base menhir cmdliner fix fpath ocaml-migrate-parsetree odoc re stdio uuseg uutf"
	[ocamlgraph]="stdlib-shims"
	[ocamlgraph_gtk]="stdlib-shims lablgtk ocamlgraph"
	[ocamlnet]=""
	[ocaml-compiler-libs]=""
	[ocaml-ctypes]="integers"
	[ocaml-migrate-parsetree]="result ppx_derivers"
	[ocaml-migrate-parsetree-ocamlbuild]="ocaml-migrate-parsetree ocamlbuild"
	[ocaml-version]=""
	[ocplib-endian]=""
	[ocp-indent]="cmdliner findlib"
	[octavius]=""
	[odoc]="astring cmdliner fpath result tyxml"
	[opam]=""
	[opam-admin]=""
	[opam-client]="opam-state re opam-solver cmdliner"
	[opam-core]="ocamlgraph re"
	[opam-format]="opam-core opam-file-format"
	[opam-repository]="opam-format"
	[opam-solver]="opam-format mccs dose3 cudf"
	[opam-state]="opam-repository"
	[opam-file-format]=""
	[ounit2]="stdlib-shims"
	[ounit2-lwt]="ounit2 lwt"
	[parmap]="dune-configurator"
	[parsexp]="sexplib0 base"
	[parsexp_io]="base parsexp ppx_js_style stdio"
	[patdiff]="core core_kernel patience_diff ppx_jane pcre re"
	[patience_diff]="base core_kernel ppx_jane"
	[pcap-format]="cstruct ppx_cstruct ppx_tools"
	[pcre]="dune-configurator"
	[pgocaml]="calendar csv hex ppx_sexp_conv re ppx_deriving rresult sexplib"
	[pgocaml_ppx]="pgocaml ocaml-migrate-parsetree ppx_deriving ppx_optcomp ppx_sexp_conv ppx_tools ppx_tools_versioned
rresult sexplib"
	[pomap]=""
	[postgresql]="dune-configurator"
	[ppxfind]="ocaml-migrate-parsetree findlib"
	[ppx_assert]="base ppx_cold ppx_compare ppx_here ppx_sexp_conv ppxlib"
	[ppx_base]="ppx_cold ppx_compare ppx_enumerate ppx_hash ppx_js_style ppx_sexp_conv ppxlib"
	[ppx_bench]="ppx_inline_test ppxlib"
	[ppx_bin_prot]="base bin_prot ppx_here ppxlib"
	[ppx_cold]="base ppxlib"
	[ppx_compare]="base ppxlib"
	[ppx_cstruct]="cstruct ppxlib sexplib stdlib-shims"
	[ppx_custom_printf]="base ppx_sexp_conv ppxlib"
	[ppx_derivers]=""
	[ppx_deriving]="ppx_tools ocaml-migrate-parsetree ppx_derivers result"
	[ppx_deriving_protobuf]="ppx_deriving"
	[ppx_deriving_yojson]="yojson result ppx_deriving ppx_tools"
	[ppx_driver]="ppxlib"
	[ppx_enumerate]="base ppxlib"
	[ppx_expect]="base ppx_here ppx_inline_test ppxlib re stdio"
	[ppx_fail]="base ppx_here ppxlib"
	[ppx_fields_conv]="base fieldslib ppxlib"
	[ppx_fixed_literal]="base ppxlib"
	[ppx_gen_rec]="ocaml-migrate-parsetree"
	[ppx_hash]="base ppx_compare ppx_sexp_conv ppxlib"
	[ppx_here]="base ppxlib"
	[ppx_import]="ppxlib ppx_tools_versioned ocaml-migrate-parsetree"
	[ppx_inline_test]="base time_now ppxlib"
	[ppx_jane]="base_quickcheck ppx_assert ppx_base ppx_bench ppx_bin_prot ppx_custom_printf ppx_expect ppx_fields_conv
ppx_fixed_literal ppx_here ppx_inline_test ppx_let ppx_module_timer ppx_optcomp ppx_optional ppx_pipebang
ppx_sexp_message ppx_sexp_value ppx_stable ppx_string ppx_typerep_conv ppx_variants_conv ppxlib"
	[ppx_js_style]="base octavius ppxlib"
	[ppx_let]="base ppxlib"
	[ppx_metaquot]="ppxlib"
	[ppx_module_timer]="base ppx_base stdio time_now ppxlib"
	[ppx_optcomp]="base stdio ppxlib"
	[ppx_optional]="base ppxlib"
	[ppx_pipebang]="ppxlib"
	[ppx_protocol_conv]="base stdio ppxlib"
	[ppx_protocol_conv_json]="ppx_protocol_conv yojson ppx_expect ppx_inline_test"
	[ppx_protocol_conv_msgpack]="ppx_protocol_conv msgpck"
	[ppx_protocol_conv_xml_light]="ppx_protocol_conv xml-light"
	[ppx_protocol_conv_yaml]="ppx_protocol_conv yaml"
	[ppx_sexp_conv]="base sexplib0 ppxlib"
	[ppx_sexp_message]="base ppx_here ppx_sexp_conv ppxlib"
	[ppx_sexp_value]="base ppx_here ppx_sexp_conv ppxlib"
	[ppx_stable]="base ppxlib"
	[ppx_string]="base ppx_base stdio ppxlib"
	[ppx_tools]=""
	[ppx_tools_versioned]="ocaml-migrate-parsetree"
	[ppx_typerep_conv]="base typerep ppxlib"
	[ppx_variants_conv]="base variantslib ppxlib"
	[ppxlib]="ocaml-compiler-libs ocaml-migrate-parsetree ppx_derivers sexplib0 stdlib-shims"
	[protocol_version_header]="core_kernel ppx_jane"
	[psq]="seq"
	[ptime]="result"
	[qcheck]="qcheck-ounit qcheck-core"
	[qcheck-alcotest]="qcheck-core alcotest"
	[qcheck-core]=""
	[qcheck-ounit]="qcheck-core ounit2"
	[qtest]="ounit2 qcheck"
	[re]="seq"
	[re2]="core_kernel ppx_jane"
	[react]=""
	[reactiveData]="react"
	[reason]="merlin-extend result ocaml-migrate-parsetree menhir fix"
	[redis]="re uuidm"
	[redis-lwt]="redis lwt"
	[redis-sync]="redis"
	[res]=""
	[resource-pooling]="lwt lwt_log"
	[result]=""
	[rresult]="result"
	[safepass]=""
	[sedlex]="gen ppx_tools_versioned ocaml-migrate-parsetree uchar"
	[seq]=""
	[sexplib]="parsexp sexplib0 num"
	[sexplib0]=""
	[sexp_pretty]="base ppx_base sexplib re"
	[sha]=""
	[shell]="core core_kernel jst-config ppx_jane textutils spawn"
	[spawn]=""
	[splittable_random]="base ppx_assert ppx_bench ppx_inline_test ppx_sexp_message"
	[sqlite3]="dune-configurator"
	[ssl]=""
	[stdint]=""
	[stdio]="base"
	[stdlib-shims]=""
	[stringext]=""
	[swagger]="atdgen re yojson"
	[textutils]="core ppx_jane core_kernel"
	[textutils_kernel]="core_kernel ppx_jane"
	[time_now]="base jane-street-headers jst-config ppx_base ppx_optcomp"
	[timezone]="core_kernel ppx_jane"
	[trie]=""
	[typerep]="base"
	[tyxml]="uutf re seq"
	[tyxml-ppx]="tyxml tyxml-syntax markup ppx_tools_versioned"
	[tyxml-syntax]="re uutf ppx_tools_versioned"
	[uchar]=""
	[uint]="stdint findlib"
	[uri]="re stringext"
	[uri-sexp]="uri ppx_sexp_conv sexplib0"
	[utop]="lwt lwt_react lambda-term findlib camomile react"
	[uucp]="uchar cmdliner uutf"
	[uuseg]="uchar uucp uutf cmdliner"
	[uutf]="uchar"
	[uuidm]="cmdliner"
	[variantslib]="base"
	[virtual_dom]="base core_kernel ppx_jane js_of_ocaml js_of_ocaml-ppx lambdasoup tyxml"
	[visitors]="ppx_tools ppx_deriving result"
	[webmachine]="ptime cohttp dispatch re"
	[websocket]="base64 conduit cohttp ocplib-endian astring"
	[websocket-async]="websocket async cohttp-async core logs-async logs-async-reporter"
	[websocket-lwt-unix]="websocket lwt_log cohttp-lwt-unix"
	[wtf8]=""
	[xml-light]=""
	[yaml]="dune-configurator ocaml-ctypes ppx_sexp_conv sexplib rresult fmt logs bos"
	[yojson]="easy-format biniou"
	[zarith]=""
	[zarith_stubs_js]=""
	[zed]="camomile charInfo_width react"
)

_ocaml_gen_tr_deps() {
	for d ; do
		if [[ -v _items[dev-ml/${d}:=] ]] ; then
			continue
		fi

		_items[dev-ml/${d}:=]=1
		if [[ -v _GLOBAL_OCAML_DEPS[$d] ]]; then
			_ocaml_gen_tr_deps ${_GLOBAL_OCAML_DEPS[$d]}
		else
			eqawarn "$d (transitive dep) not handled by ocaml-deps.eclass"
		fi
	done
}

ocaml_gen_deps() {
	if [[ -v _GLOBAL_OCAML_DEPS[$1] ]]; then
		declare -A -g _items=()
		_ocaml_gen_tr_deps ${_GLOBAL_OCAML_DEPS[$1]}
		echo ${!_items[*]}
	else
		die "${1} not handled by ocaml-deps.eclass"
	fi
}

ocaml_check_deps() {
	local opamfile=${1-${PN}.opam}
	einfo "Checking ${PN} against ${opamfile}"
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
	| String (_,"conf-cairo") -> ()
	| String (_,"conf-gnomecanvas") -> ()
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
	./parser "${S}/${opamfile}" | sort -u > opam.deps || die
	diff -u ebuild.deps opam.deps || die "Difference between opam and ebuild dep"
	popd &> /dev/null
}
