# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="Dereference URIs into communication channels for Async or Lwt"
HOMEPAGE="https://github.com/mirage/ocaml-conduit"
SRC_URI="https://github.com/mirage/ocaml-conduit/archive/v${PV}.tar.gz -> ocaml-conduit-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/conduit:=
	dev-ml/lwt:=
		dev-ml/result:=
	dev-ml/sexplib:=

	!dev-ml/ocaml-conduit
"
DEPEND="${RDEPEND}
	dev-ml/ppx_sexp_conv
"

S="${WORKDIR}/ocaml-conduit-${PV}"
