# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Auto-formatter for OCaml code"
HOMEPAGE="https://github.com/ocaml-ppx/ocamlformat"
SRC_URI="https://github.com/ocaml-ppx/ocamlformat/releases/download/${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/ocamlformat-rpc-lib-${PV}"
