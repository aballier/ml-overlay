# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: oasis.eclass
# @MAINTAINER:
# ML <ml@gentoo.org>
# @AUTHOR:
# Original Author: Alexis Ballier <aballier@gentoo.org>
# @SUPPORTED_EAPIS: 3 4 5
# @BLURB: Provides common ebuild phases for oasis-based packages.
# @DEPRECATED: opam.eclass, dune.eclass, or findlib.eclass (if necessary)
# @DESCRIPTION:
# Provides common ebuild phases for oasis-based packages.
# Most of these packages will just have to inherit the eclass, set their
# dependencies and the DOCS variable for base.eclass to install it and be done.
#
# It inherits multilib, findlib and base eclasses.
# Ebuilds using oasis.eclass must be EAPI>=3.

# @ECLASS-VARIABLE: OASIS_BUILD_DOCS
# @PRE_INHERIT
# @DESCRIPTION:
# Will make oasis_src_compile build the documentation if this variable is
# defined and the doc useflag is enabled.
# The eclass takes care of setting doc in IUSE but the ebuild should take care
# of the extra dependencies it may need.
# Set before inheriting the eclass.

# @ECLASS-VARIABLE: OASIS_BUILD_TESTS
# @PRE_INHERIT
# @DESCRIPTION:
# Will make oasis_src_configure enable building the tests if the test useflag is
# enabled. oasis_src_test will then run them.
# Note that you sometimes need to enable this for src_test to be useful,
# sometimes not. It has to be enabled on a per-case basis.
# The eclass takes care of setting test in IUSE but the ebuild should take care
# of the extra dependencies it may need.
# Set before inheriting the eclass.


# @ECLASS-VARIABLE: OASIS_NO_DEBUG
# @PRE_INHERIT
# @DESCRIPTION:
# Disable debug useflag usage. Old oasis versions did not support it so we allow
# disabling it in those cases.
# The eclass takes care of setting debug in IUSE.
# Set before inheriting the eclass.

# @ECLASS-VARIABLE: OASIS_DOC_DIR
# @PRE_INHERIT
# @DESCRIPTION:
# Specify where to install documentation. Default is for ocamldoc HTML.
# Change it before inherit if this is not what you want.
# EPREFIX is automatically prepended.
: ${OASIS_DOC_DIR:="/usr/share/doc/${PF}/html"}

inherit multilib findlib

case ${EAPI:-0} in
	0|1|2|3|4|5|6) die "You need at least EAPI-7 to use oasis.eclass";;
	*) RDEPEND=">=dev-lang/ocaml-3.12:=[ocamlopt?]";;
esac

IUSE="+ocamlopt"
[ -n "${OASIS_NO_DEBUG}" ]   || IUSE="${IUSE} debug"
[ -n "${OASIS_BUILD_DOCS}" ] && IUSE="${IUSE} doc"
if [[ -n ${OASIS_BUILD_TESTS} ]]; then
	IUSE+=" test"
	RESTRICT+=" !test? ( test )"
fi

DEPEND="${RDEPEND}"
BDEPEND="
	dev-ml/camlp-streams
	dev-ml/findlib
	dev-ml/ocamlbuild"

# @FUNCTION: oasis_use_enable
# @USAGE: < useflag > < variable >
# @DESCRIPTION:
# A use_enable-like function for oasis configure variables.
# Outputs '--override variable (true|false)', whether useflag is enabled or
# not.
# Typical usage: $(oasis_use_enable ocamlopt is_native) as an oasis configure
# argument.
oasis_use_enable() {
	echo "--override $2 $(usex $1 true false)"
}

# @FUNCTION: oasis_src_configure
# @DESCRIPTION:
# src_configure phase shared by oasis-based packages.
# Extra arguments may be passed via oasis_configure_opts.
oasis_src_configure() {
	local confargs=""
	[ -n "${OASIS_BUILD_TESTS}" ] && confargs="${confargs} $(use_enable test tests)"
	[ -n "${OASIS_NO_DEBUG}"    ] || confargs="${confargs} $(oasis_use_enable debug debug)"
	${OASIS_SETUP_COMMAND:-ocaml -I $(ocamlfind query camlp-streams) $(ocamlfind query camlp-streams)/camlp_streams.cma setup.ml} -configure \
		--prefix "${ED}/usr" \
		--libdir "${ED}/usr/$(get_libdir)" \
		--docdir "${ED}${OASIS_DOC_DIR}" \
		$(oasis_use_enable ocamlopt is_native) \
		${confargs} \
		${oasis_configure_opts} \
		|| die
}

# @FUNCTION: oasis_src_compile
# @DESCRIPTION:
# Builds an oasis-based package.
# Will build documentation if OASIS_BUILD_DOCS is defined and the doc useflag is
# enabled.
oasis_src_compile() {
	${OASIS_SETUP_COMMAND:-ocaml -I $(ocamlfind query camlp-streams) $(ocamlfind query camlp-streams)/camlp_streams.cma setup.ml} -build || die
	if [ -n "${OASIS_BUILD_DOCS}" ] && use doc; then
		ocaml setup.ml -doc || die
	fi
}

# @FUNCTION: oasis_src_test
# @DESCRIPTION:
# Runs the testsuite of an oasis-based package.
oasis_src_test() {
	LD_LIBRARY_PATH="${S}/_build/lib" ${OASIS_SETUP_COMMAND:-ocaml -I $(ocamlfind query camlp-streams) $(ocamlfind query camlp-streams)/camlp_streams.cma setup.ml} -test || die
}

# @FUNCTION: oasis_src_install
# @DESCRIPTION:
# Installs an oasis-based package.
# It calls base_src_install_docs, so will install documentation declared in the
# DOCS variable.
oasis_src_install() {
	findlib_src_preinst
	${OASIS_SETUP_COMMAND:-ocaml -I $(ocamlfind query camlp-streams) $(ocamlfind query camlp-streams)/camlp_streams.cma setup.ml} -install || die
	einstalldocs
}

EXPORT_FUNCTIONS src_configure src_compile src_test src_install
