# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Generate OCaml modules from source files"
HOMEPAGE="https://github.com/gildor478/ocamlmod"
SRC_URI="https://github.com/gildor478/ocamlmod/releases/download/v${PV}/${P}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
