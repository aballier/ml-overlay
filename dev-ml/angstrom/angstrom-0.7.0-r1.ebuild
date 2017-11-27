# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Parser combinators built for speed and memory efficiency"
HOMEPAGE="https://github.com/inhabitedtype/angstrom"
SRC_URI="https://github.com/inhabitedtype/angstrom/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="dev-ml/result:="
DEPEND="${RDEPEND}
	test? ( dev-ml/alcotest )"
