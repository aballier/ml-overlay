# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_TESTS=1
OASIS_BUILD_DOCS=1

inherit oasis

DESCRIPTION="Thin bindings to various low-level system APIs"
HOMEPAGE="http://ygrek.org.ua/p/ocaml-extunix/ https://github.com/ygrek/extunix"
SRC_URI="https://github.com/ygrek/extunix/releases/download/v${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-ml/ocaml-migrate-parsetree
	test? ( dev-ml/ounit2 )"
DOCS=( "README.md" "TODO" "CHANGES.txt" )
PATCHES=( "${FILESDIR}/ounit2.patch" )
