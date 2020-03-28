# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A libary to build xml trees typechecked by OCaml"
HOMEPAGE="http://ocsigen.org/tyxml/"
SRC_URI="https://github.com/ocsigen/tyxml/archive/${PV}.tar.gz -> tyxml-${PV}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

DEPEND="
	>=dev-lang/ocaml-4.07
	dev-ml/tyxml:=
		>=dev-ml/uutf-1.0:=
		dev-ml/re:=
	dev-ml/markup:=
	dev-ml/ppx_tools_versioned:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/alcotest )"
S="${WORKDIR}/tyxml-${PV}"
