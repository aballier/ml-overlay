# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib toolchain-funcs

DESCRIPTION="Arithmetic and logic operations over arbitrary-precision integers"
HOMEPAGE="https://github.com/ocaml/Zarith"
SRC_URI="https://github.com/ocaml/Zarith/archive/release-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc mpir +ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4:=[ocamlopt?]
	!mpir? ( dev-libs/gmp:0= )
	mpir? ( sci-libs/mpir )"

DEPEND="${RDEPEND}"

S="${WORKDIR}/Zarith-release-${PV}"

src_configure() {
	tc-export CC
	./configure \
		-ocamllibdir "$(ocamlc -where)" \
		-installdir "$(ocamlc -where)" \
		$(usex mpir "-mpir" "-gmp") || die
}

src_compile() {
	emake -j1 HASOCAMLOPT=$(usex ocamlopt yes no) HASDYNLINK=$(usex ocamlopt yes no) all
	use doc && emake doc
}

src_test() {
	if use ocamlopt ; then
		emake HASOCAMLOPT=$(usex ocamlopt yes no) HASDYNLINK=$(usex ocamlopt yes no) tests
	else
		ewarn "Tests require USE=ocamlopt. Skipping them."
	fi
}

src_install() {
	findlib_src_preinst
	emake \
		INSTALLDIR="${D}/$(ocamlc -where)" \
		HASOCAMLOPT=$(usex ocamlopt yes no) \
		HASDYNLINK=$(usex ocamlopt yes no) \
		install
	dodoc Changes README.md
	if use doc; then
		docinto html
		dodoc html/*
	fi
}
