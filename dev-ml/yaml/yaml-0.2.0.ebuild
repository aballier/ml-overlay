# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="OCaml interface to the YAML 1.1 spec"
HOMEPAGE="https://github.com/avsm/ocaml-yaml"
SRC_URI="https://github.com/avsm/ocaml-yaml/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/ocaml-ctypes:=
	dev-ml/rresult:=
	dev-ml/fmt:=
	dev-ml/logs:=
	dev-ml/sexplib:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/ppx_sexp_conv
	test? (
		dev-ml/alcotest
		dev-ml/ezjsonm
		dev-ml/bos
	)
"
