# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vim-plugin jbuilder

DESCRIPTION="Context sensitive completion for OCaml in Vim and Emacs"
HOMEPAGE="https://github.com/ocaml/merlin"
SRC_URI="https://github.com/ocaml/merlin/releases/download/v${PV}-414/${P}-414.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	|| ( app-editors/vim[python] app-editors/gvim[python] )"
S="${WORKDIR}/${P}-414"
PATCHES=("${FILESDIR}/yojson.patch")
