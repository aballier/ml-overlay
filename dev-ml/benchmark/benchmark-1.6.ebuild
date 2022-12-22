# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Measure/compare run-time of OCaml functions"
HOMEPAGE="https://github.com/Chris00/ocaml-benchmark"
SRC_URI="https://github.com/Chris00/ocaml-benchmark/releases/download/${PV}/${P}.tbz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
