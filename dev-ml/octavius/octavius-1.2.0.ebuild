# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="ocamldoc comment syntax parser"
HOMEPAGE="https://github.com/ocaml-doc/octavius"
SRC_URI="https://github.com/ocaml-doc/octavius/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~ppc"
IUSE=""

RDEPEND=""
DEPEND="${DEPEND}"
