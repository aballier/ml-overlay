# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Pretty-printing library"
HOMEPAGE="https://github.com/ocaml-dune/pp"
SRC_URI="https://github.com/ocaml-dune/pp/releases/download/${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
