# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils opam

DESCRIPTION="OCaml module to access monotonic wall-clock time"
HOMEPAGE="http://erratique.ch/software/mtime https://github.com/dbuenzli/mtime"
SRC_URI="http://erratique.ch/software/mtime/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="javascript test"

RDEPEND="
	javascript? ( dev-ml/js_of_ocaml:= )
"
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_compile() {
	ocaml pkg/pkg.ml build \
		--with-js_of_ocaml $(usex javascript true false) \
		--tests $(usex test true false) \
		|| die
}

src_test() {
	ocaml pkg/pkg.ml test || die
}
