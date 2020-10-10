# Copyright 2019-2020 Gentoo Authors
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

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	dev-ml/topkg
	dev-ml/ocamlbuild
	dev-ml/findlib
"
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build \
		--with-uutf true \
		--with-cmdliner true \
		|| die
}
