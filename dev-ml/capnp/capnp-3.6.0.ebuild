# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OCaml code generator plugin for the Cap'n Proto serialization framework"
HOMEPAGE="https://github.com/pelzlpj/capnp-ocaml"
SRC_URI="https://github.com/pelzlpj/capnp-ocaml/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-libs/capnproto:="
DEPEND="${RDEPEND}"
BDEPEND=""

S="${WORKDIR}/${PN}-ocaml-${PV}"

src_prepare() {
	jbuilder_src_prepare
	sed -e 's/oUnit/ounit2/' -i src/tests/dune || die
}
