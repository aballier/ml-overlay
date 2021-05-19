# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="O'Caml Graph library"
HOMEPAGE="http://ocamlgraph.lri.fr/index.en.html https://github.com/backtracking/ocamlgraph/"
SRC_URI="https://github.com/backtracking/ocamlgraph/releases/download/${PV}/${P}.tbz"
LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/graphics )"
