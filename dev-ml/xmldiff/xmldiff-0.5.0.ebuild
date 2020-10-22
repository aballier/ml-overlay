# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib

DESCRIPTION="Diffs on XML trees"
HOMEPAGE="https://zoggy.github.io/xmldiff/"
SRC_URI="https://zoggy.github.io/xmldiff/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND="
	dev-lang/ocaml:=
	dev-ml/xmlm:=
"
RDEPEND="${DEPEND}"
BDEPEND=""
PATCHES=( "${FILESDIR}/version.patch" )

src_install() {
	findlib_src_install
	dodoc README.md
}
