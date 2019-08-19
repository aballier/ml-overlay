# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit findlib opam

DESCRIPTION="Combinators to devise OCaml Format pretty-printing functions"
HOMEPAGE="http://erratique.ch/software/fmt https://github.com/dbuenzli/fmt"
SRC_URI="http://erratique.ch/software/fmt/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

RDEPEND="dev-ml/result:=
	>=dev-lang/ocaml-4.07:=[ocamlopt]
	dev-ml/uchar:=[ocamlopt]
	dev-ml/cmdliner:=[ocamlopt]"
DEPEND="${RDEPEND}
	>=dev-ml/topkg-0.9
	dev-ml/ocamlbuild
	dev-ml/findlib"

PATCHES=( "${FILESDIR}/noseq.patch" )

src_compile() {
	ocaml pkg/pkg.ml build --tests $(usex test 'true' 'false') || die
}

src_test() {
	ocaml pkg/pkg.ml test || die
}
