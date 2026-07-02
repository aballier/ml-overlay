# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Key Derivation Functions"
HOMEPAGE="https://github.com/robur-coop/kdf"
SRC_URI="https://github.com/robur-coop/kdf/releases/download/v${PV}/${P}.tbz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
