# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit findlib jbuilder

DESCRIPTION="Map OCaml arrays onto C-like structs"
HOMEPAGE="https://github.com/mirage/ocaml-cstruct https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-cstruct/archive/v${PV}.tar.gz -> ocaml-ctruct-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-ml/cstruct:=
	dev-ml/async_kernel:=
	dev-ml/async_unix:=
	dev-ml/core_kernel:=
	!dev-ml/ocaml-cstruct"
DEPEND="${RDEPEND}"

S="${WORKDIR}/ocaml-cstruct-${PV}"
