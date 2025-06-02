# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A Yojson codec generator for OCaml"
HOMEPAGE="https://github.com/whitequark/ppx_deriving_yojson/"
SRC_URI="https://github.com/whitequark/ppx_deriving_yojson/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	jbuilder_src_prepare
	sed -e 's/oUnit/ounit2/' -i src_test/dune || die
}
