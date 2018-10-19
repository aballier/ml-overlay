# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Very lightweight HTTP server using Lwt or Async"
HOMEPAGE="https://github.com/mirage/ocaml-cohttp"
SRC_URI="https://github.com/mirage/ocaml-cohttp/archive/v${PV}.tar.gz -> ocaml-cohttp-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/async_kernel:=
	dev-ml/async_unix:=
	dev-ml/async_extra:=
	dev-ml/base:=
	dev-ml/cohttp:=
	dev-ml/conduit-async:=
	dev-ml/magic-mime:=
	dev-ml/logs:=
	dev-ml/fmt:=
	dev-ml/sexplib:=
	>=dev-ml/uri-2:=
"
DEPEND="${RDEPEND}
	dev-ml/ppx_sexp_conv
	test? ( dev-ml/ounit dev-ml/core )"

S="${WORKDIR}/ocaml-cohttp-${PV}"
PATCHES=( "${FILESDIR}/uri2.patch" )
