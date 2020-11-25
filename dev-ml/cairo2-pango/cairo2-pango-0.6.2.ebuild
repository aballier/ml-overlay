# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Binding to Cairo, a 2D Vector Graphics Library"
HOMEPAGE="https://github.com/Chris00/ocaml-cairo"
SRC_URI="https://github.com/Chris00/ocaml-cairo/releases/download/${PV}/cairo2-${PV}.tbz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="x11-libs/cairo:="
RDEPEND="${DEPEND}
	!dev-ml/ocaml-cairo
"
BDEPEND=""

S="${WORKDIR}/cairo2-${PV}"
