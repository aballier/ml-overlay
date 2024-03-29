# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="Ocaml XML manipulation module"
HOMEPAGE="http://erratique.ch/software/xmlm https://github.com/dbuenzli/xmlm"
SRC_URI="http://erratique.ch/software/${PN}/releases/${P}.tbz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build \
		--tests $(usex test 'true' 'false') \
		|| die
}

src_test() {
	opam_src_test
	ocaml pkg/pkg.ml test || die
}
