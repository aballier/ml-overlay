# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="OCaml TCP/IP networking stack"
HOMEPAGE="https://github.com/mirage/mirage-tcpip"
SRC_URI="https://github.com/mirage/mirage-tcpip/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
PATCHES=( "${FILESDIR}/mc.patch" )
