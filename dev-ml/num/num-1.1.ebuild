# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit findlib

DESCRIPTION="The legacy Num library for integer and rational arithmetic that used to be part of the OCaml core"
HOMEPAGE="https://github.com/ocaml/num/"
SRC_URI="https://github.com/ocaml/num/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~amd64-fbsd ~amd64-linux ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc-macos ~ppc64 ~sparc ~sparc-solaris ~x86 ~x86-fbsd ~x86-linux ~x86-macos ~x86-solaris"
IUSE=""

DEPEND=">=dev-lang/ocaml-4.06.0_beta:="
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/destdir.patch" )

src_install() {
	findlib_src_install
}
