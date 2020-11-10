# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib

DESCRIPTION="Legacy Num library for integer and rational arithmetic"
HOMEPAGE="https://github.com/ocaml/num/"
SRC_URI="https://github.com/ocaml/num/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE=""

DEPEND=">=dev-lang/ocaml-4.06.0_beta:="
RDEPEND="${DEPEND}"

src_install() {
	findlib_src_preinst
	emake DESTDIR="${D}" findlib-install
}
