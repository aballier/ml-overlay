# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Library to parse and enumerate releases of the OCaml compiler"
HOMEPAGE="https://github.com/ocurrent/ocaml-version"
SRC_URI="https://github.com/ocurrent/ocaml-version/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"
BDEPEND=""
