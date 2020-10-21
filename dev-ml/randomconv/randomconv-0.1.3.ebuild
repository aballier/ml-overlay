# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P="${PN}-v${PV}"
DESCRIPTION="Convert from random bytes to random native numbers"
HOMEPAGE="https://github.com/hannesm/randomconv"
SRC_URI="https://github.com/hannesm/randomconv/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${MY_P}"
