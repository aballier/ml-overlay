# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A composable build system for OCaml"
HOMEPAGE="https://github.com/ocaml/dune"
SRC_URI="https://github.com/ocaml/dune/archive/${PV}.tar.gz -> dune-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}"
S=${WORKDIR}/dune-${PV}

src_configure() {
	ocaml configure.ml \
		--libdir "${EPREFIX}/usr/$(get_libdir)/ocaml" \
		--mandir "${EPREFIX}/usr/share/man" \
		--docdir "${EPREFIX}/usr/share/doc" \
		--etcdir "${EPREFIX}/etc" \
		|| die
}
