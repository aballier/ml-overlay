# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="A REST toolkit for OCaml"
HOMEPAGE="https://github.com/inhabitedtype/ocaml-webmachine"
SRC_URI="https://github.com/inhabitedtype/ocaml-webmachine/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/calendar:=
	dev-ml/cohttp:=
	dev-ml/dispatch:=
	dev-ml/re:=
	!dev-ml/ocaml-webmachine
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/ounit )
"

S="${WORKDIR}/ocaml-${P}"
