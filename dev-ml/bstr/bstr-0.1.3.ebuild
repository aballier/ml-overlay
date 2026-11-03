# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="A simple library for bigstrings"
HOMEPAGE="https://git.robur.coop/robur/bstr https://github.com/robur-coop/bstr/"
SRC_URI="https://github.com/robur-coop/bstr/releases/download/v${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
