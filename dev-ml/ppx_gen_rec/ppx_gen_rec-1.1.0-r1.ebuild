# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="ocaml preprocessor that generates a recursive module"
HOMEPAGE="https://github.com/flowtype/ocaml-ppx_gen_rec"
SRC_URI="https://github.com/flowtype/ocaml-ppx_gen_rec/releases/download/v${PV}/${PN}-v${PV}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}-v${PV}"
