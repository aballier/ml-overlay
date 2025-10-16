# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="A syntax extension for importing declarations from interface files"
HOMEPAGE="https://github.com/ocaml-ppx/ppx_import"
SRC_URI="https://github.com/ocaml-ppx/ppx_import/releases/download/v${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/oc54.patch" )

src_prepare() {
	jbuilder_src_prepare
	sed -e 's/oUnit/ounit2/' \
		-i src_test/ppx_deriving/dune \
		|| die
}
