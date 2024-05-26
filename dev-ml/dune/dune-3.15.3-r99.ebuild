# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam multiprocessing

DESCRIPTION="A composable build system for OCaml"
HOMEPAGE="https://github.com/ocaml/dune"
SRC_URI="https://github.com/ocaml/dune/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	!dev-ml/jbuilder"
DEPEND="${DEPEND}"
OPAMSWITCH="system"

OPAMROOT="${D}"

src_configure() {
	./configure \
		--libdir "${EPREFIX}/usr/$(get_libdir)/ocaml" \
		--mandir "${EPREFIX}/usr/share/man" \
		--docdir "${EPREFIX}/usr/share/doc" \
		--etcdir "${EPREFIX}/etc" \
		|| die
}

src_compile() {
	ocaml boot/bootstrap.ml || die
	./dune.exe build -p "${PN}" --profile dune-bootstrap -j $(makeopts_jobs) || die
}
