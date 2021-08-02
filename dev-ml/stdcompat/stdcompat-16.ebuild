# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib autotools

DESCRIPTION="Stdcompat: compatibility module for OCaml standard library"
HOMEPAGE="https://github.com/thierry-martinez/stdcompat"
SRC_URI="https://github.com/thierry-martinez/stdcompat/releases/download/v${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-ml/result:=
	dev-ml/uchar:=
	dev-lang/ocaml:=
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf \
		--libdir=$(ocamlc -where)
}

src_compile() {
	emake -j1
}

src_test() {
	emake test
}
