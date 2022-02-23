# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OASIS_BUILD_TESTS=1

inherit oasis

DESCRIPTION="Generate OCaml modules from source files"
HOMEPAGE="https://github.com/gildor478/ocamlmod"
SRC_URI="https://github.com/gildor478/ocamlmod/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( >=dev-ml/ounit2-2.0.0 )"

DOCS=( "AUTHORS.txt" "README.txt" )
PATCHES=( "${FILESDIR}/oasis.patch" )
