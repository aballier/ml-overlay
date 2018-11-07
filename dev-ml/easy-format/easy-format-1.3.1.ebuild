# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam jbuilder

DESCRIPTION="Pretty-printing library for OCaml"
HOMEPAGE="https://github.com/mjambon/easy-format"
SRC_URI="https://github.com/mjambon/easy-format/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0/${PV}"
LICENSE="BSD"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

IUSE="examples"

RDEPEND=""
DEPEND="${RDEPEND}"

src_install() {
	opam_src_install
	if use examples ; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
}
