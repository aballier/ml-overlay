# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam multiprocessing

MY_PV="${PV/_/+}"
MY_P="${PN}-${PV/_/.}"

DESCRIPTION="A composable build system for OCaml"
HOMEPAGE="https://github.com/janestreet/jbuilder"
SRC_URI="https://github.com/ocaml/dune/releases/download/${MY_PV}/${MY_P}.tbz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? (
		dev-ml/menhir
		dev-ml/reason
		dev-ml/ocaml-migrate-parsetree
		dev-ml/ppx_driver
		dev-ml/odoc
		dev-ml/js_of_ocaml-compiler
		dev-ml/utop
	)
"
OPAMSWITCH="system"

S="${WORKDIR}/${PN}-${PV/_/+}"
OPAMROOT="${D}"

src_configure() {
	ocaml configure.ml --libdir "${EPREFIX}/usr/$(get_libdir)/ocaml" || die
}

src_compile() {
	ocaml bootstrap.ml || die
	./boot.exe -j $(makeopts_jobs) || die
}

src_test() {
	./_build/default/bin/main.exe runtest -p ${PN} -j $(makeopts_jobs) || die
}
