# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="OCamlify creates OCaml code by including files into strings or string lists"
HOMEPAGE="https://github.com/gildor478/ocamlify"
SRC_URI="https://github.com/gildor478/ocamlify/releases/download/v${PV}/${P}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"

RDEPEND=""
DEPEND="${RDEPEND}"
IUSE=""
