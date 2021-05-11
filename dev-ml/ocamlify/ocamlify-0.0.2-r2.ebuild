# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit oasis

DESCRIPTION="OCamlify creates OCaml code by including files into strings or string lists"
HOMEPAGE="http://forge.ocamlcore.org/projects/ocamlify"
SRC_URI="http://forge.ocamlcore.org/frs/download.php/1209/${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64"

RDEPEND=""
DEPEND="${RDEPEND}"
IUSE=""

DOCS=( "README.txt" "AUTHORS.txt" )
PATCHES=( "${FILESDIR}/oasis_regen.patch" )
