# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Inline (Unit) Tests for OCaml"
HOMEPAGE="https://github.com/vincent-hugot/qtest"
SRC_URI="https://github.com/vincent-hugot/qtest/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND="dev-ml/ounit:=
	dev-lang/ocaml:=[ocamlopt]
	>=dev-ml/qcheck-0.5:=
	!dev-ml/iTeML
"
DEPEND="${RDEPEND}"
