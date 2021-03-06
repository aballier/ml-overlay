# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit findlib eutils

DESCRIPTION="Unit testing tool for the Objective Caml language"
HOMEPAGE="http://kaputt.x9c.fr/"
SRC_URI="http://kaputt.x9c.fr/distrib/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-lang/ocaml-3.11:=[ocamlopt]
	dev-ml/num:="
DEPEND="${RDEPEND}
	dev-ml/ocamlbuild"

src_prepare() {
	has_version '>=dev-lang/ocaml-4.06_beta' && epatch "${FILESDIR}/ocaml406.patch"
	epatch "${FILESDIR}/numf.patch"
}

src_configure() {
	chmod +x configure
	./configure || die
}

src_compile() {
	emake all
}

src_test() {
	emake -j1 tests
}

src_install() {
	findlib_src_install
	dodoc README FEATURES CHANGES
}
