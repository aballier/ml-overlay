# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="In-memory key value store for MirageOS"
HOMEPAGE="https://github.com/mirage/mirage-kv-mem"
SRC_URI="https://github.com/mirage/mirage-kv-mem/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
