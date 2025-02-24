# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="POSIX clock for MirageOS"
HOMEPAGE="https://github.com/mirage/mirage-ptime"
SRC_URI="https://github.com/mirage/mirage-ptime/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
