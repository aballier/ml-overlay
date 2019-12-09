# Copyright 1999-2019 Gentoo Authors
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
	dev-ml/ppx_tools_versioned:=
	dev-ml/sexplib:=
	dev-ml/ocaml-migrate-parsetree:=
		dev-ml/result:=
"
DEPEND="
	test? (
		dev-ml/ppx_sexp_conv
		dev-ml/cstruct-unix
		dev-ml/cstruct-sexp
	)
	${RDEPEND}
"

S="${WORKDIR}/ocaml-cstruct-${PV}"
