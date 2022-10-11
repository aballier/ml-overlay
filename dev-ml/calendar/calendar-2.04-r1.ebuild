# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib autotools

DESCRIPTION="An Ocaml library to handle dates and time"
HOMEPAGE="http://forge.ocamlcore.org/projects/calendar/"
SRC_URI="http://forge.ocamlcore.org/frs/download.php/1481/${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="doc"

DEPEND=">=dev-lang/ocaml-3.12:=[ocamlopt]"
RDEPEND="${DEPEND}"
PATCHES=(
	"${FILESDIR}/oc50.patch"
	"${FILESDIR}/dynlink.patch"
)

src_prepare() {
	default
	eautoreconf
}

src_compile() {
	emake
	use doc && emake doc
}

src_test() {
	emake tests
}

src_install() {
	findlib_src_install
	dodoc README CHANGES

	if use doc ; then
		docinto html
		dodoc -r doc
	fi
}
