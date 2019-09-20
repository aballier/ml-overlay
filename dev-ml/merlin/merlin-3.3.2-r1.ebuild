# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vim-plugin jbuilder

DESCRIPTION="Context sensitive completion for OCaml in Vim and Emacs"
HOMEPAGE="https://github.com/ocaml/merlin"
SRC_URI="https://github.com/ocaml/merlin/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/yojson:=
"
RDEPEND="${DEPEND}
	|| ( app-editors/vim[python] app-editors/gvim[python] )"
DEPEND="${DEPEND}
	test? ( dev-ml/mdx )"

PATCHES=( "${FILESDIR}/oc409.patch" )
src_prepare() {
	for i in utils typing preprocess parsing merlin_specific ; do
		cp -a src/ocaml/${i}/40{8,9} || die #hack
	done
	default
}
