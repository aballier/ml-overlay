# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="ppx to include a binary blob from a file as a string"
HOMEPAGE="https://github.com/johnwhitington/ppx_blob"
SRC_URI="https://github.com/johnwhitington/ppx_blob/releases/download/${PV}/${P}.tbz"

LICENSE="Unlicense"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
