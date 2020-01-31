# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit jbuilder

DESCRIPTION="Library for radix-64 representation (de)coding"
HOMEPAGE="https://github.com/mirage/ocaml-base64"
SRC_URI="https://github.com/mirage/ocaml-base64/releases/download/v${PV}/${PN}-v${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="!dev-ml/ocaml-base64
	dev-ml/dune-configurator:=
"
DEPEND="${RDEPEND}
	test? ( dev-ml/rresult dev-ml/bos dev-ml/alcotest )
"

S="${WORKDIR}/${PN}-v${PV}"
