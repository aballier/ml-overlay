# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="OCaml Ethernet (IEEE 802.3) layer"
HOMEPAGE="https://github.com/mirage/ethernet"
SRC_URI="https://github.com/mirage/ethernet/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
