# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam findlib

DESCRIPTION="POSIX time for OCaml"
HOMEPAGE="http://erratique.ch/software/ptime"
SRC_URI="http://erratique.ch/software/ptime/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+javascript"

RDEPEND="
	dev-ml/result:=
	javascript? ( dev-ml/js_of_ocaml:= )
"
DEPEND="${RDEPEND}"

src_compile() {
	ocaml pkg/pkg.ml build --with-js_of_ocaml $(usex javascript true false) || die
}
