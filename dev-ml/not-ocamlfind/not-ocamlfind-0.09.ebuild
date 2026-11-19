# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib opam

DESCRIPTION="Front-end to ocamlfind to add a few new commands"
HOMEPAGE="https://github.com/chetmurthy/not-ocamlfind"
SRC_URI="https://github.com/chetmurthy/not-ocamlfind/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
OPAM_FILE=opam

src_configure() {
	./configure -bindir "/usr/bin" -sitelib "/usr/$(get_libdir)/ocaml" -mandir man -config "/usr/$(get_libdir)/ocaml/findlib/findlib.conf" -no-custom || die
}

src_compile() {
	emake -j1
}

src_install() {
	dodir /usr/bin
	findlib_src_install OCAMLFIND_BINDIR="${ED}/usr/bin/"
}
