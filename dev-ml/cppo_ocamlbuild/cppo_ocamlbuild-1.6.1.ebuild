# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit jbuilder

DESCRIPTION="Ocamlbuild integration for cppo"
HOMEPAGE="http://mjambon.com/cppo.html https://github.com/mjambon/cppo/"
SRC_URI="https://github.com/mjambon/cppo/archive/v${PV}.tar.gz -> cppo-${PV}.tar.gz"

SLOT="0/${PV}"
LICENSE="BSD"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"

IUSE=""

RDEPEND="dev-ml/ocamlbuild:=
	!<=dev-ml/cppo-1.6.0"
DEPEND="${RDEPEND}"

S="${WORKDIR}/cppo-${PV}"
