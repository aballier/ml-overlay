# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit vim-plugin jbuilder

DESCRIPTION="Context sensitive completion for OCaml in Vim and Emacs"
HOMEPAGE="https://github.com/ocaml/merlin"
SRC_URI="https://github.com/ocaml/merlin/releases/download/v${PV}/${PN}-v${PV}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	|| ( app-editors/vim[python] app-editors/gvim[python] )"
DEPEND="${DEPEND}
	test? ( dev-ml/mdx )"

S="${WORKDIR}/${PN}-v${PV}"
