# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="A tool that indexes value usages from cmt files"
HOMEPAGE="https://github.com/voodoos/ocaml-index"
SRC_URI="https://github.com/voodoos/ocaml-index/releases/download/v${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
