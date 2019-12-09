# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="RFC3986 URI parsing library for OCaml"
HOMEPAGE="https://github.com/mirage/ocaml-uri https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-uri/archive/v${PV}.tar.gz -> ocaml-uri-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/uri:=
		>=dev-ml/re-1.9.0:=
		dev-ml/stringext:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/sexplib0:=
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 )
"

S="${WORKDIR}/ocaml-uri-${PV}"
PATCHES=( "${FILESDIR}/ounit2.patch" )
