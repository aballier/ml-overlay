# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="Heterogeneous value maps"
HOMEPAGE="https://erratique.ch/software/hmap https://github.com/dbuenzli/hmap"
SRC_URI="https://erratique.ch/software/hmap/releases/${P}.tbz"

LICENSE="LGPL-2-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""
OPAM_FILE="opam"

src_compile() {
	ocaml pkg/pkg.ml build || die
}
