# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib jbuilder

DESCRIPTION="Map OCaml arrays onto C-like structs"
HOMEPAGE="https://github.com/mirage/ocaml-cstruct https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-cstruct/archive/v${PV}.tar.gz -> ocaml-ctruct-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="dev-ml/cstruct:=
	dev-ml/sexplib:=
	!dev-ml/ocaml-cstruct"
DEPEND="${RDEPEND}
	test? ( dev-ml/alcotest )"

S="${WORKDIR}/ocaml-cstruct-${PV}"
