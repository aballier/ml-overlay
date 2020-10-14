# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="I18n made easy for web sites written with eliom"
HOMEPAGE="https://github.com/besport/ocsigen-i18n"
SRC_URI="https://github.com/besport/ocsigen-i18n/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-lang/ocaml:=
	dev-ml/tyxml:=
	dev-ml/ppx_tools:=
"
DEPEND="${RDEPEND}
	dev-ml/findlib"

src_install() {
	dodir /usr/bin
	emake bindir="${ED}/usr/bin" install || die
	dodoc README.MD
}
