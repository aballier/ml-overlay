# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Simple sequence (iterator) datatype and combinators"
HOMEPAGE="https://github.com/c-cube/sequence"
SRC_URI="https://github.com/c-cube/sequence/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/qtest )"
