# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A binary data serialization format inspired by JSON for OCaml"
HOMEPAGE="https://github.com/mjambon/biniou"
SRC_URI="https://github.com/ocaml-community/biniou/releases/download/${PV}/${P}.tbz"

SLOT="0/${PV}"
LICENSE="BSD"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
