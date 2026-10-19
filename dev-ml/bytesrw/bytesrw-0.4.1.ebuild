# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib opam

DESCRIPTION="Composable byte stream readers and writers"
HOMEPAGE="https://erratique.ch/software/bytesrw"
SRC_URI="https://erratique.ch/software/bytesrw/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	app-arch/zstd:=
	virtual/zlib:=
"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-ml/topkg
	dev-ml/ocamlbuild
	virtual/pkgconfig
"
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build \
		--with-cmdliner false \
		--with-b0 false \
		--with-conf-libblake3 false \
		--with-conf-mbedtls false \
		--with-conf-libmd false \
		--with-conf-xxhash false \
		--with-conf-zlib true \
		--with-conf-zstd true \
		--tests $(usex test true false) \
		|| die
}

src_test() {
	opam_src_test
	ocaml pkg/pkg.ml test || die
}
