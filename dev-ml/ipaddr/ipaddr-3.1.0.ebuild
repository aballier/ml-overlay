# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OCaml library for manipulation of IP (and MAC) address representations"
HOMEPAGE="https://github.com/mirage/ocaml-ipaddr"
SRC_URI="https://github.com/mirage/ocaml-ipaddr/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+ocamlopt test"

RDEPEND="dev-ml/sexplib0:=
	dev-ml/macaddr:=
	!dev-ml/ocaml-ipaddr
"
DEPEND="${RDEPEND}
	dev-ml/findlib
	test? ( dev-ml/ounit dev-ml/ppx_sexp_conv )
"

S="${WORKDIR}/ocaml-${P}"
