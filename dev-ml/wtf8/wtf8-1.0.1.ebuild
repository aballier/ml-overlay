# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="WTF-8 encoder and decoder"
SRC_URI="https://github.com/flowtype/ocaml-wtf8/releases/download/v${PV}/${P}.tbz"
HOMEPAGE="https://github.com/flowtype/ocaml-wtf8"

SLOT="0/${PV}"
LICENSE="MIT"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
