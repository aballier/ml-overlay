# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit oasis

DESCRIPTION="an implementation of the Light Weight Directory Access Protocol"
HOMEPAGE="http://git-jpdeplaix.dyndns.org/libs/ocamldap.git/"
SRC_URI="https://bitbucket.org/deplai_j/${PN}/downloads/${P}.tar.gz"
LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="doc"

RDEPEND="dev-ml/pcre-ocaml:=
	dev-ml/ocaml-ssl:=
	dev-ml/ocamlnet:="
DEPEND="${RDEPEND}
	dev-ml/oasis"

DOCS=( AUTHORS.txt Changelog INSTALL.txt README.txt )

src_prepare() {
	epatch "${FILESDIR}/ocaml-4.02.patch"
	has_version '>=dev-lang/ocaml-4.06.0_beta' && epatch "${FILESDIR}/ocaml406.patch"
	oasis setup || die
	default
}

src_install() {
	oasis_src_install
	use doc && dohtml -r doc/ocamldap/html
}
