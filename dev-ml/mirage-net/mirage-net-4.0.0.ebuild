# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Network signatures for MirageOS"
HOMEPAGE="https://github.com/mirage/mirage-net"
SRC_URI="https://github.com/mirage/mirage-net/releases/download/v${PV}/${PN}-v${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${PN}-v${PV}"
