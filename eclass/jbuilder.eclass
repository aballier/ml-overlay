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

case ${EAPI:-0} in
	0|1|2|3|4|5|6) die "EAPI=${EAPI} unsupported";;
	*) BDEPEND=">=dev-ml/dune-2.9 dev-lang/ocaml"; DEPEND="${RDEPEND}" ;;
esac

IUSE="+ocamlopt"

# This disables Werror-like behavior
DUNE_PROFILE="release"

jbuilder_src_prepare() {
	default
	local jb=$(find . -name jbuild -type f)
	if [ -n "${jb}" ] ; then
		ewarn "${PN} still uses jbuild, upgrading it"
		dune upgrade || die
	fi
}

jbuilder_src_compile() {
	dune build -p "${PN}" -j $(makeopts_jobs) @install || die
}

jbuilder_src_test() {
	opam_src_test
	einfo "Running 'dune runtest -p "${PN}" -j $(makeopts_jobs)'"
	dune runtest -p "${PN}" -j $(makeopts_jobs) || die
}

jbuilder_src_install() {
	opam_src_install
}

EXPORT_FUNCTIONS src_prepare src_compile src_test src_install
