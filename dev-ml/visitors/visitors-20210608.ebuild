# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="An OCaml syntax extension for generating visitor classes"
HOMEPAGE="https://gitlab.inria.fr/fpottier/visitors"
SRC_URI="https://gitlab.inria.fr/fpottier/visitors/-/archive/${PV}/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
