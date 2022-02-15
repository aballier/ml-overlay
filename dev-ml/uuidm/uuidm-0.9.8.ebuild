# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib opam

DESCRIPTION="OCaml module implementing 128 bits universally unique identifiers"
HOMEPAGE="http://erratique.ch/software/uuidm"
SRC_URI="http://erratique.ch/software/uuidm/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build || die
}
