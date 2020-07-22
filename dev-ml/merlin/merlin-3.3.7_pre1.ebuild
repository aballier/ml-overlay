# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vim-plugin jbuilder

DESCRIPTION="Context sensitive completion for OCaml in Vim and Emacs"
HOMEPAGE="https://github.com/ocaml/merlin"
SRC_URI="https://github.com/ocaml/merlin/archive/v${PV%_*}-4.11-${PV/*_pre/preview}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/yojson:=
	dev-ml/findlib:=
"
RDEPEND="${DEPEND}
	|| ( app-editors/vim[python] app-editors/gvim[python] )"
DEPEND="${DEPEND}
	test? ( dev-ml/mdx )"

S="${WORKDIR}/${PN}-${PV%_*}-4.11-${PV/*_pre/preview}"
