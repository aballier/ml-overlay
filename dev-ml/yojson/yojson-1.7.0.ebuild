# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="JSON parsing and pretty-printing library for OCaml"
HOMEPAGE="http://mjambon.com/yojson.html https://github.com/mjambon/yojson"
SRC_URI="https://github.com/ocaml-community/yojson/releases/download/${PV}/${P}.tbz"

SLOT="0/${PV}"
LICENSE="BSD"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="examples test"

RDEPEND="
	dev-ml/easy-format:=
	>=dev-ml/biniou-1.2:=
"
DEPEND="${RDEPEND}
	>=dev-ml/cppo-1.6.6
	test? ( dev-ml/alcotest )
"

src_install() {
	opam_src_install

	if use examples ; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
}
