# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P="${PN}-v${PV}"
DESCRIPTION="Hexadecimal converter "
HOMEPAGE="https://github.com/mirage/ocaml-hex"
SRC_URI="https://github.com/mirage/ocaml-hex/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/${MY_P}"
