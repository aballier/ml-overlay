# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="A package for ocaml that provides access to SQLite databases"
HOMEPAGE="http://mmottl.github.io/sqlite3-ocaml/"
SRC_URI="https://github.com/mmottl/sqlite3-ocaml/releases/download/${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-db/sqlite-3.3.3
	dev-ml/dune-configurator:=
	!dev-ml/ocaml-sqlite3
"
DEPEND="${RDEPEND}
	>=dev-ml/findlib-1.3.2"
