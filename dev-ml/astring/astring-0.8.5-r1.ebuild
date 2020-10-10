# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS="auto"
inherit opam

DESCRIPTION="Alternative String module for OCaml"
HOMEPAGE="http://erratique.ch/software/astring https://github.com/dbuenzli/astring"
SRC_URI="http://erratique.ch/software/astring/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-ml/topkg
	dev-ml/ocamlbuild
	dev-ml/findlib"

src_compile() {
	ocaml pkg/pkg.ml build || die
}
