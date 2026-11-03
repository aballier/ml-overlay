# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="ADLER-32 and CRC32C Cyclic Redundancy Check"
HOMEPAGE="https://github.com/mirage/checkseum"
SRC_URI="https://github.com/mirage/checkseum/releases/download/v${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
