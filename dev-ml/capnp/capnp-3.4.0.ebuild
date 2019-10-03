# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OCaml code generator plugin for the Cap'n Proto serialization framework"
HOMEPAGE="https://github.com/pelzlpj/capnp-ocaml"
SRC_URI="https://github.com/pelzlpj/capnp-ocaml/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/result:=
	dev-ml/base:=
	dev-ml/stdio:=
	dev-ml/ocplib-endian:=
	dev-ml/res:=
	dev-ml/stdint:=
	dev-libs/capnproto:=
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 dev-ml/base_quickcheck )
"
BDEPEND=""

S="${WORKDIR}/${PN}-ocaml-${PV}"
PATCHES=( "${FILESDIR}/ounit2.patch" )
