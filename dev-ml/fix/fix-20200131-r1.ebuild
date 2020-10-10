# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Facilities for memoization and fixed points"
HOMEPAGE="https://gitlab.inria.fr/fpottier/fix"
SRC_URI="https://gitlab.inria.fr/fpottier/fix/repository/${PV}/archive.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	export S="$(echo ${WORKDIR}/${P}-*)"
}
