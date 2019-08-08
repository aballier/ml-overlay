# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib

DESCRIPTION="An OCaml syntax extension for generating visitor classes"
HOMEPAGE="https://gitlab.inria.fr/fpottier/visitors"
SRC_URI="https://gitlab.inria.fr/fpottier/visitors/-/archive/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-lang/ocaml:=
	dev-ml/ppx_tools:=
	dev-ml/ppx_deriving:=
	dev-ml/result:=
"
RDEPEND="${DEPEND}"
BDEPEND=""
RESTRICT="test"

src_install() {
	findlib_src_preinst
	default
}
