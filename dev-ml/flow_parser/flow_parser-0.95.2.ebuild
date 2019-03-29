# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit findlib

DESCRIPTION="JavaScript parser written in OCaml"
HOMEPAGE="https://github.com/facebook/flow/tree/master/src/parser"
SRC_URI="https://github.com/facebook/flow/archive/v${PV}.tar.gz -> flow-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-lang/ocaml:=
	dev-ml/sedlex:=
	dev-ml/wtf8:=
	dev-ml/ppx_gen_rec:=
	dev-ml/ppx_deriving:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/ocamlbuild"

S="${WORKDIR}/flow-${PV}/src/parser"

src_compile() {
	emake build-parser
}

src_test() {
	emake test-ocaml
}

src_install() {
	findlib_src_preinst
	emake ocamlfind-install
	dodoc README.md
}
