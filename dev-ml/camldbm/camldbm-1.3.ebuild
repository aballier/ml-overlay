# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="OCaml binding to the NDBM/GDBM Unix databases"
HOMEPAGE="https://github.com/ocaml/dbm"
SRC_URI="https://github.com/ocaml/dbm/archive/${P}.tar.gz"

LICENSE="LGPL-2-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~ppc ~x86"
IUSE=""

DEPEND=">=sys-libs/gdbm-1.9.1-r2[berkdb]
	>=dev-lang/ocaml-3.12:=[ocamlopt]
	!<dev-ml/findlib-1.8.0
"
RDEPEND="${DEPEND}"
S="${WORKDIR}/dbm-${P}"

src_install() {
	dodir "$(ocamlc -where)/stublibs" "$(ocamlc -where)/dbm" # required and makefile does not create it
	emake LIBDIR="${D}/$(ocamlc -where)/dbm" STUBLIBDIR="${D}/$(ocamlc -where)/stublibs" install
	insinto "$(ocamlc -where)/dbm"
	doins META
	dodoc README.md Changelog
}
