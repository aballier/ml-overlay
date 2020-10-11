# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="Basic OS interaction for OCaml"
HOMEPAGE="http://erratique.ch/software/bos https://github.com/dbuenzli/bos"
SRC_URI="http://erratique.ch/software/bos/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build --tests $(usex test true false) || die
}

src_test() {
	ocaml pkg/pkg.ml test || die
}
