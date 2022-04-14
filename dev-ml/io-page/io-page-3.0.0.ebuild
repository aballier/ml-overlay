# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="IO memory page library for Mirage backends"
HOMEPAGE="https://github.com/mirage/io-page https://mirage.io"
SRC_URI="https://github.com/mirage/io-page/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="
	${RDEPEND}
"

src_prepare() {
	sed -e 's/oUnit/ounit2/g' -i lib_test/dune || die
	jbuilder_src_prepare
}
