# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="IO memory page library for Mirage backends"
HOMEPAGE="https://github.com/mirage/io-page https://mirage.io"
SRC_URI="https://github.com/mirage/io-page/archive/${PV}.tar.gz -> io-page-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/io-page:=
	dev-ml/cstruct:=
"
DEPEND="
	dev-ml/configurator
	test? ( dev-ml/ounit )
	${RDEPEND}
"

S="${WORKDIR}/io-page-${PV}"
