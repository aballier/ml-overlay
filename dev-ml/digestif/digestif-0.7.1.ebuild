# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P="${PN}-v${PV}"
DESCRIPTION="Simple hash algorithms in OCaml "
HOMEPAGE="https://github.com/mirage/digestif"
SRC_URI="https://github.com/mirage/digestif/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/eqaf:=
"
DEPEND="${RDEPEND}
	test? (
		dev-ml/fmt
		dev-ml/alcotest
	)"
BDEPEND=""

S="${WORKDIR}/${MY_P}"
