# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="Unicode text segmentation for OCaml"
HOMEPAGE="https://erratique.ch/software/uuseg https://github.com/dbuenzli/uuseg"
SRC_URI="https://erratique.ch/software/uuseg/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-lang/ocaml:=
	dev-ml/uchar:=
	dev-ml/uucp:=
	dev-ml/uutf:=
	dev-ml/cmdliner:=
"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-ml/topkg
	dev-ml/ocamlbuild
	dev-ml/findlib
"

src_compile() {
	ocaml pkg/pkg.ml build \
		--with-uutf true \
		--with-cmdliner true \
		|| die
}
