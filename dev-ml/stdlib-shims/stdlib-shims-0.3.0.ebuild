# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Shims for forward-compatibility between versions of the OCaml standard library"
HOMEPAGE="https://github.com/ocaml/stdlib-shims"
SRC_URI="https://github.com/ocaml/stdlib-shims/releases/download/${PV}/${P}.tbz"

LICENSE="QPL-1.0 LGPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
