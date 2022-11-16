# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib

IUSE="examples sourceview +ocamlopt spell svg"

DESCRIPTION="Objective CAML interface for Gtk+2"
HOMEPAGE="http://lablgtk.forge.ocamlcore.org/"
SRC_URI="https://github.com/garrigue/lablgtk/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="LGPL-2.1-with-linking-exception examples? ( lablgtk-examples )"

RDEPEND=">=x11-libs/gtk+-2.10:2
	>=dev-lang/ocaml-4.06_beta:=[ocamlopt?]
	dev-ml/camlp-streams:=
	svg? ( >=gnome-base/librsvg-2.2:2 )
	spell? ( app-text/gtkspell:2 )
	sourceview? ( x11-libs/gtksourceview:2.0 )
	"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

SLOT="2/${PV}"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"

src_configure() {
	export ac_cv_prog_CAMLP4O="no" # Avoid automagic
	econf \
		$(use_with svg rsvg) \
		--without-glade \
		--without-gnomeui \
		--without-panel \
		--without-gl \
		$(use_with spell gtkspell) \
		--without-gtksourceview \
		$(use_with sourceview gtksourceview2) \
		--without-gnomecanvas
}

src_compile() {
	emake -j1 all
	if use ocamlopt; then
		emake -j1 opt
	fi
}

install_examples() {
	docompress -x /usr/share/doc/${PF}/examples

	docinto examples
	dodoc examples/*.ml examples/*.rgb examples/*.png examples/*.xpm

	# Install examples for optional components
	if use svg ; then
		docinto rsvg
		dodoc examples/rsvg/*.ml examples/rsvg/*.svg
	fi
	if use sourceview ; then
		docinto sourceview
		dodoc examples/sourceview/*.ml examples/sourceview/*.lang
	fi
}

src_install () {
	findlib_src_preinst
	export OCAMLPATH="${OCAMLFIND_DESTDIR}"
	emake install DESTDIR="${D}"

	rm -f "${ED}/usr/$(get_libdir)/ocaml/ld.conf"

	dodoc CHANGES README CHANGES.API
	use examples && install_examples
}

pkg_postinst () {
	if use examples; then
		elog "To run the examples you can use the lablgtk2 toplevel."
		elog "e.g: lablgtk2 /usr/share/doc/${PF}/examples/testgtk.ml"
	fi
}
