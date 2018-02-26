# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit findlib opam

DESCRIPTION="JSON parsing and pretty-printing library for OCaml"
HOMEPAGE="http://mjambon.com/yojson.html https://github.com/mjambon/yojson"
SRC_URI="https://github.com/mjambon/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0/${PV}"
LICENSE="BSD"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE="examples"

RDEPEND=">=dev-lang/ocaml-3.11:=[ocamlopt]
	dev-ml/easy-format:=
	>=dev-ml/biniou-1.2:=
"
DEPEND="${RDEPEND}
	dev-ml/cppo
	dev-ml/jbuilder
"

src_install() {
	opam_src_install

	if use examples ; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
}
