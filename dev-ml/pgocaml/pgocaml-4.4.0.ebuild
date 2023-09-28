# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="PG'OCaml is a set of OCaml bindings for the PostgreSQL database"
HOMEPAGE="http://pgocaml.forge.ocamlcore.org/ https://github.com/darioteixeira/pgocaml"
SRC_URI="https://github.com/darioteixeira/pgocaml/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	jbuilder_src_prepare
	sed -e 's/oUnit/ounit2/' -i tests_ppx/dune || die
}
