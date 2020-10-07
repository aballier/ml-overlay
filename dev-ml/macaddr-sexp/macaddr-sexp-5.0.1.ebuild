# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OCaml library for manipulation of MAC address representations"
HOMEPAGE="https://github.com/mirage/ocaml-ipaddr"
SRC_URI="https://github.com/mirage/ocaml-ipaddr/archive/v${PV}.tar.gz -> ocaml-ipaddr-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="!dev-ml/ocaml-ipaddr
	dev-ml/macaddr:=
	dev-ml/ppx_sexp_conv:=
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 dev-ml/macaddr-cstruct )
"

S="${WORKDIR}/ocaml-ipaddr-${PV}"

src_prepare() {
	default
	sed -e 's/oUnit/ounit2/' -i lib_test/dune || die
}
