# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A composable build system for OCaml"
HOMEPAGE="https://github.com/ocaml/dune"
SRC_URI="https://github.com/ocaml/dune/archive/${PV}.tar.gz -> dune-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="
	dev-ml/dune-glob:=
	dev-ml/ppx_expect:=
	dev-ml/dune-private-libs:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}"
S=${WORKDIR}/dune-${PV}

src_configure(){
	:
}
