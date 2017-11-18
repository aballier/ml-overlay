# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="IO memory page library for Mirage backends"
HOMEPAGE="https://github.com/mirage/io-page https://mirage.io"
SRC_URI="https://github.com/mirage/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-ml/cstruct:="
DEPEND="
	dev-ml/configurator
	${RDEPEND}
"

# Done in io-page-unix
RESTRICT="test"
