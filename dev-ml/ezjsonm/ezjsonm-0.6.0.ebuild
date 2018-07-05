# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="An easy interface on top of the Jsonm library"
HOMEPAGE="https://github.com/mirage/ezjsonm"
SRC_URI="https://github.com/mirage/ezjsonm/releases/download/${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/jsonm:=
	dev-ml/sexplib:=
	dev-ml/hex:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/alcotest )"
RESTRICT="test" #FIXME
