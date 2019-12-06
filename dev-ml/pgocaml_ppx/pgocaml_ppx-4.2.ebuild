# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="PG'OCaml is a set of OCaml bindings for the PostgreSQL database"
HOMEPAGE="http://pgocaml.forge.ocamlcore.org/ https://github.com/darioteixeira/pgocaml"
SRC_URI="https://github.com/darioteixeira/pgocaml/archive/${PV}.tar.gz -> pgocaml-${PV}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/pgocaml:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppx_optcomp:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/ppx_tools:=
	dev-ml/ppx_tools_versioned:=
	dev-ml/rresult:=
	dev-ml/sexplib:="
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}"
S="${WORKDIR}/pgocaml-${PV}"
