# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Syntax for cross-language type definitions"
HOMEPAGE="https://github.com/mjambon/atd"
SRC_URI="https://github.com/mjambon/atd/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+ocamlopt test"

DEPEND="
	dev-ml/easy-format:=
	dev-ml/menhir:=[ocamlopt?]
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? (
		dev-ml/biniou
		dev-ml/yojson
	)
"
