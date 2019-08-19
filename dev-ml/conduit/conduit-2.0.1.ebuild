# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Dereference URIs into communication channels for Async or Lwt"
HOMEPAGE="https://github.com/mirage/ocaml-conduit"
SRC_URI="https://github.com/mirage/ocaml-conduit/archive/v${PV}.tar.gz -> ocaml-conduit-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/ppx_sexp_conv:=
	dev-ml/sexplib:=
		dev-ml/parsexp:=
			dev-ml/base:=
	dev-ml/astring:=
	dev-ml/uri:=
	dev-ml/logs:=
	dev-ml/ipaddr:=
	dev-ml/ipaddr-sexp:=

	!dev-ml/ocaml-conduit
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/ocaml-conduit-${PV}"
