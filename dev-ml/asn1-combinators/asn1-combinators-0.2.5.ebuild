# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P=${PN}-v${PV}
DESCRIPTION="Embed typed ASN.1 grammars in OCaml"
HOMEPAGE="https://github.com/mirleft/ocaml-asn1-combinators"
SRC_URI="https://github.com/mirleft/ocaml-asn1-combinators/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${MY_P}"
