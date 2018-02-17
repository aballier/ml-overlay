# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="Simple, efficient iterators for OCaml"
HOMEPAGE="https://github.com/c-cube/gen"
SRC_URI="https://github.com/c-cube/gen/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/qcheck dev-ml/qtest )
"
