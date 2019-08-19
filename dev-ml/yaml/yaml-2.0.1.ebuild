# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

MY_P="${PN}-v${PV}"
DESCRIPTION="OCaml interface to the YAML 1.1 spec"
HOMEPAGE="https://github.com/avsm/ocaml-yaml"
SRC_URI="https://github.com/avsm/ocaml-yaml/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/ocaml-ctypes:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/sexplib:=
	dev-ml/rresult:=
	dev-ml/fmt:=
	dev-ml/logs:=
	dev-ml/bos:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? (
		dev-ml/alcotest
		dev-ml/ezjsonm
	)
"
RESTRICT="test"
S="${WORKDIR}/${MY_P}"
