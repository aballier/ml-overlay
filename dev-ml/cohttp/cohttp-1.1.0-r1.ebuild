# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="Very lightweight HTTP server using Lwt or Async"
HOMEPAGE="https://github.com/mirage/ocaml-cohttp"
SRC_URI="https://github.com/mirage/ocaml-cohttp/archive/v${PV}.tar.gz -> ocaml-cohttp-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/re:=
	dev-ml/uri:=
	dev-ml/fieldslib:=
	dev-ml/sexplib:=
	dev-ml/stringext:=
	dev-ml/base64:=
	dev-ml/ppx_sexp_conv:=

	!dev-ml/ocaml-cohttp
"
DEPEND="${RDEPEND}
	dev-ml/ppx_fields_conv
	dev-ml/jsonm
	test? (
		dev-ml/alcotest
		dev-ml/fmt
	)
"

S="${WORKDIR}/ocaml-cohttp-${PV}"
