# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P=io-page-v${PV}
DESCRIPTION="IO memory page library for Mirage backends"
HOMEPAGE="https://github.com/mirage/io-page https://mirage.io"
SRC_URI="https://github.com/mirage/io-page/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/cstruct:=
	dev-ml/io-page:=
	dev-ml/bigarray-compat:=
"
DEPEND="
	${RDEPEND}
	dev-ml/configurator
	test? ( dev-ml/ounit )
"

S="${WORKDIR}/${MY_P}"
