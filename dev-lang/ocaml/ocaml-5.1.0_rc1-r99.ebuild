# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PV="${PV/_/-}"
MY_P="${PN}-${MY_PV}"
DESCRIPTION="Type-inferring functional programming language descended from the ML family"
HOMEPAGE="http://www.ocaml.org/"
SRC_URI="https://github.com/ocaml/ocaml/archive/${MY_PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="QPL-1.0 LGPL-2"
# Everytime ocaml is updated to a new version, everything ocaml must be rebuilt,
# so here we go with the subslot.
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos"
IUSE="emacs flambda latex +ocamlopt xemacs"

RDEPEND="
	sys-libs/binutils-libs:=
"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

PDEPEND="emacs? ( app-emacs/ocaml-mode )
	xemacs? ( app-xemacs/ocaml )"
RDEPEND="${RDEPEND}
	!<dev-ml/findlib-1.9.6-r100"

S="${WORKDIR}/${MY_P}"

src_configure() {
	econf \
		--libdir="${EPREFIX}/usr/$(get_libdir)/ocaml" \
		$(use_enable flambda)
}

src_compile() {
	if use ocamlopt ; then
		env -u P emake world.opt
	else
		env -u P emake world
	fi
}

src_test() {
	if use ocamlopt ; then
		emake ocamltest
		emake -j1 tests
	else
		ewarn "${PN} testsuite requires ocamlopt useflag"
	fi
}

src_install() {
	emake DESTDIR="${D}" install

	# Symlink the headers to the right place
	dodir /usr/include
	dosym ../$(get_libdir)/ocaml/caml /usr/include/caml

	dodoc Changes README.adoc

	# Create and envd entry for latex input files
	if use latex ; then
		echo "TEXINPUTS=${EPREFIX}/usr/$(get_libdir)/ocaml/ocamldoc:" > "${T}"/99ocamldoc
		doenvd "${T}"/99ocamldoc
	fi
}
