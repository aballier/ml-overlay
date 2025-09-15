# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="Unicode character database decoder"
HOMEPAGE="https://erratique.ch/software/uucd https://github.com/dbuenzli/uucd"
SRC_URI="https://erratique.ch/software/uucd/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build \
		|| die
}
