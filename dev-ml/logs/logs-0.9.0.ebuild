# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit findlib opam

DESCRIPTION="Logging infrastructure for OCaml"
HOMEPAGE="http://erratique.ch/software/logs https://github.com/dbuenzli/logs"
SRC_URI="http://erratique.ch/software/logs/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="javascript +fmt +cli +lwt test"

RDEPEND="
	javascript? ( dev-ml/js_of_ocaml-compiler:= )
	fmt? ( dev-ml/fmt:= )
	cli? ( dev-ml/cmdliner:=[ocamlopt] )
	lwt? ( dev-ml/lwt:= )
"
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build \
		--with-js_of_ocaml-compiler $(usex javascript true false) \
		--with-fmt $(usex fmt true false) \
		--with-cmdliner $(usex cli true false) \
		--with-lwt $(usex fmt true false) \
		--tests $(usex test true false) \
		|| die
}

src_test() {
	opam_src_test
	ocaml pkg/pkg.ml test || die
}
