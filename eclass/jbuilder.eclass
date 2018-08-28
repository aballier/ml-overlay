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

case ${EAPI:-0} in
    0|1|2|3|4) die "You need at least EAPI-5 to use opam.eclass";;
    *) ;;
esac

inherit opam multiprocessing

RDEPEND="dev-lang/ocaml:="
case ${EAPI:-0} in
	0|1|2|3|4|5|6) DEPEND="${RDEPEND} dev-ml/dune";;
	*) BDEPEND="dev-ml/dune dev-lang/ocaml"; DEPEND="${RDEPEND}" ;;
esac

jbuilder_src_compile() {
	jbuilder build -p "${PN}" -j $(makeopts_jobs) @install || die
}

jbuilder_src_test() {
	jbuilder runtest -p "${PN}" -j $(makeopts_jobs) || die
}

EXPORT_FUNCTIONS src_compile src_test
