# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Execute code blocks inside markdown files"
HOMEPAGE="https://github.com/realworldocaml/mdx"
SRC_URI="https://github.com/realworldocaml/mdx/releases/download/${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}-ppxlib"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( app-text/pandoc )
"
BDEPEND=""
PATCHES=( "${FILESDIR}/oc53.patch" )
