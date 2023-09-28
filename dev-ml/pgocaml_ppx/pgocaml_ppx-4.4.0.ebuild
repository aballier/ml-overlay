# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="PG'OCaml is a set of OCaml bindings for the PostgreSQL database"
HOMEPAGE="http://pgocaml.forge.ocamlcore.org/ https://github.com/darioteixeira/pgocaml"
SRC_URI="https://github.com/darioteixeira/pgocaml/archive/${PV}.tar.gz -> pgocaml-${PV}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}-ppxlib"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}"
S="${WORKDIR}/pgocaml-${PV}"
