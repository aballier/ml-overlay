# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1
OASIS_BUILD_TESTS=1

inherit oasis

DESCRIPTION="PG'OCaml is a set of OCaml bindings for the PostgreSQL database"
HOMEPAGE="http://pgocaml.forge.ocamlcore.org/ https://github.com/darioteixeira/pgocaml"
SRC_URI="https://github.com/darioteixeira/pgocaml/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+camlp4 doc"

DEPEND="dev-ml/calendar:=
	dev-ml/csv:=
	dev-ml/hex:=
	dev-ml/re:=
	dev-ml/ppx_tools_versioned:=
	dev-ml/ocaml-migrate-parsetree:=
	camlp4? ( dev-ml/camlp4:= )"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/ppx_tools
	dev-ml/ocamlbuild
	dev-ml/findlib
	dev-ml/rresult
	test? ( dev-ml/ounit )"

DOCS=( "README.md" "CHANGELOG.txt"
	"doc/BUGS.txt" "doc/CONTRIBUTORS.txt"
	"doc/HOW_IT_WORKS.txt" "doc/PROFILING.txt"
	)
PATCHES=( "${FILESDIR}/ounit2.patch" )

src_configure() {
	oasis_configure_opts="$(use_enable camlp4 p4)" oasis_src_configure
}
