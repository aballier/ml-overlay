# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Meta Language Toolchain"
HOMEPAGE="https://github.com/facebook/reason"
SRC_URI="https://github.com/facebook/reason/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+ocamlopt"

DEPEND="
	dev-ml/merlin-extend:=
	dev-ml/result:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/utop:=
	dev-ml/menhir:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/findlib
"

PATCHES=( "${FILESDIR}/ocaml406.patch" )
