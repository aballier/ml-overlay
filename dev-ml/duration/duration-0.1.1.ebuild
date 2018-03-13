# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam

DESCRIPTION="OCaml duration representation"
HOMEPAGE="https://github.com/hannesm/duration"
SRC_URI="https://github.com/hannesm/duration/releases/download/${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/findlib
	dev-ml/ocamlbuild
	dev-ml/topkg
	test? ( dev-ml/alcotest )"

src_compile() {
	ocaml pkg/pkg.ml build --tests $(usex test true false) || die
}

src_test() {
	ocaml pkg/pkg.ml test || die
}
