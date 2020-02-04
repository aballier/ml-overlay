# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P=${PN}-v${PV}
DESCRIPTION="Constant time equal function to avoid timing attacks in OCaml"
HOMEPAGE="https://github.com/mirage/eqaf"
SRC_URI="https://github.com/mirage/eqaf/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/alcotest )"
BDEPEND=""
S="${WORKDIR}/${MY_P}"
