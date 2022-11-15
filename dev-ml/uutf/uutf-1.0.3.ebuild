# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib

DESCRIPTION="Non-blocking streaming Unicode codec for OCaml"
HOMEPAGE="http://erratique.ch/software/uutf"
SRC_URI="http://erratique.ch/software/uutf/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE="utftrip +ocamlopt test"

RDEPEND=">=dev-lang/ocaml-3.12:=[ocamlopt?]
	dev-ml/uchar:=
	utftrip? ( dev-ml/cmdliner:= )"
DEPEND="${RDEPEND}
	dev-ml/ocamlbuild
	dev-ml/topkg
	test? ( dev-ml/cmdliner )"
RESTRICT="!test? ( test )"

src_compile() {
	ocaml pkg/pkg.ml build \
		--with-cmdliner "$(usex utftrip true false)" \
		--tests $(usex test true false) \
		|| die
}

src_test() {
	ocaml pkg/pkg.ml test || die
}

src_install() {
	# Can't use opam-installer here as it is an opam dep...
	findlib_src_preinst
	local nativelibs=""
	use ocamlopt && nativelibs="$(echo _build/src/uutf.cm{x,xa,xs} _build/src/uutf.a)"
	ocamlfind install uutf _build/pkg/META _build/src/uutf.mli _build/src/uutf.cm{a,i} ${nativelibs} || die
	use utftrip && newbin _build/test/utftrip.$(usex ocamlopt native byte) utftrip
	dodoc CHANGES.md README.md
}
