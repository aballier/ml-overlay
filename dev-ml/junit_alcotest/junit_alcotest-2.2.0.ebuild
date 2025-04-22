# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

BASE_PN=junit
DESCRIPTION="JUnit XML reports generation"
HOMEPAGE="https://github.com/Khady/ocaml-junit"
SRC_URI="https://github.com/Khady/ocaml-junit/releases/download/${PV}/${BASE_PN}-${PV}.tbz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${BASE_PN}-${PV}"

src_prepare() {
	jbuilder_src_prepare
	sed -e 's/oUnit/ounit2/' -i ounit/dune || die
}
