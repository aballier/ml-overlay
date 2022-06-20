# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Convert OCaml parsetrees between different major versions"
HOMEPAGE="https://github.com/ocaml-ppx/ocaml-migrate-parsetree"
SRC_URI="https://github.com/ocaml-ppx/ocaml-migrate-parsetree/releases/download/${PV}/${P}.tbz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
