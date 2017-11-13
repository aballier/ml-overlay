# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam

DESCRIPTION="Camomile is a comprehensive Unicode library for ocaml"
HOMEPAGE="https://github.com/yoriyuki/Camomile/wiki"
SRC_URI="https://github.com/yoriyuki/Camomile/archive/rel-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="debug +ocamlopt"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-ml/jbuilder
	dev-ml/cppo"

S="${WORKDIR}/Camomile-rel-${PV}"

src_configure() {
	ocaml configure.ml --share "${EPREFIX}/usr/share/camomile"
}

src_compile() {
	jbuilder build || die
}
