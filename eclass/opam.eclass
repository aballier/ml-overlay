# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: opam.eclass
# @MAINTAINER:
# Gentoo ML Project <ml@gentoo.org>
# @AUTHOR:
# Alexis Ballier <aballier@gentoo.org>
# @BLURB: Provides functions for installing opam packages.
# @DESCRIPTION:
# Provides dependencies on opam and ocaml, opam-install and a default
# src_install for opam-based packages.

# @ECLASS-VARIABLE: OPAM_INSTALLER_DEP
# @DESCRIPTION:
# Override dependency for OPAM_INSTALLER
: ${OPAM_INSTALLER_DEP:="dev-ml/opam-installer"}

inherit ocaml-deps

RDEPEND=">=dev-lang/ocaml-4:=
	$(ocaml_gen_deps ${PN})"
IUSE="test"
RESTRICT="!test? ( test )"

case ${EAPI:-0} in
	0|1|2|3|4|5|6) die "EAPI=${EAPI} unsupported";;
	*) BDEPEND="${OPAM_INSTALLER_DEP} dev-lang/ocaml"; DEPEND="${RDEPEND}" ;;
esac

BDEPEND="${BDEPEND}
	test? (
		dev-lang/ocaml
		dev-ml/opam-file-format
		dev-ml/findlib
	)
"

# @ECLASS-VARIABLE: OPAM_INSTALLER
# @DESCRIPTION:
# Eclass can use different opam-installer binary than the one provided in by system.
: ${OPAM_INSTALLER:=opam-installer}

# @FUNCTION: opam-install
# @USAGE: <list of packages>
# @DESCRIPTION:
# Installs the opam packages given as arguments. For each "${pkg}" element in
# that list, "${pkg}.install" must be readable from current working directory.
opam-install() {
	local pkg
	for pkg ; do
		${OPAM_INSTALLER} -i \
			--prefix="${ED}/usr" \
			--libdir="${D}/$(ocamlc -where)" \
			--docdir="${ED}/usr/share/doc/${PF}" \
			--mandir="${ED}/usr/share/man" \
			"${pkg}.install" || die
	done
}

opam_src_test() {
	[[ -z ${OPAM_SKIP_VALIDATION} ]] && ocaml_check_deps "${OPAM_FILE:-${PN}.opam}"
	default
}

opam_src_install() {
	local pkg="${1:-${PN}}"
	opam-install "${pkg}"
	# Handle opam putting doc in a subdir
	if [ -d "${ED}/usr/share/doc/${PF}/${pkg}" ] ; then
		mv "${ED}/usr/share/doc/${PF}/${pkg}/"* "${ED}/usr/share/doc/${PF}/" || die
		rmdir "${ED}/usr/share/doc/${PF}/${pkg}" || die
	fi
}

EXPORT_FUNCTIONS src_test src_install
