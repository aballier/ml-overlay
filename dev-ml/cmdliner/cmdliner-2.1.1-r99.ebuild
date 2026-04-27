# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit opam

DESCRIPTION="Declarative definition of command line interfaces for OCaml"
HOMEPAGE="http://erratique.ch/software/cmdliner"
SRC_URI="http://erratique.ch/software/${PN}/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE="+ocamlopt"

RDEPEND=""
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_install() {
	emake DESTDIR="${D}" LIBDIR="${ED}/usr/$(get_libdir)/ocaml/${PN}" install
}
