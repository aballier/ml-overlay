# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Camomile is a comprehensive Unicode library for ocaml"
HOMEPAGE="https://github.com/yoriyuki/Camomile/wiki"
SRC_URI="https://github.com/yoriyuki/Camomile/releases/download/${PV}/${P}.tbz"

LICENSE="LGPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

src_configure() {
	ocaml configure.ml --share "${EPREFIX}/usr/share/camomile"
}
