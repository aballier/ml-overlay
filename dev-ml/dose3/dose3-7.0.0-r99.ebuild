# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Library to perform analysis on package repositories"
HOMEPAGE="http://www.mancoosi.org/software/ https://gforge.inria.fr/projects/dose https://gitlab.com/irill/dose3"
SRC_URI="https://gitlab.com/irill/dose3/-/archive/${PV}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
BDEPEND="
	test? (
		dev-python/pyyaml
		app-arch/dpkg
	)
"

src_prepare() {
	jbuilder_src_prepare
	sed -e 's/oUnit/ounit2/g' -i src/*/tests/dune || die
}
