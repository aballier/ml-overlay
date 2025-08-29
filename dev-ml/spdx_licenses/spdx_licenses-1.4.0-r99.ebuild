# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="A library providing a strict SPDX License Expression parser"
HOMEPAGE="https://github.com/kit-ty-kate/spdx_licenses"
SRC_URI="https://github.com/kit-ty-kate/spdx_licenses/releases/download/v${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
