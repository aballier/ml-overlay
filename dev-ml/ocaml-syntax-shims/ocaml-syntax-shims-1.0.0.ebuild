# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Backports some of the newer OCaml syntax to older OCaml compilers"
HOMEPAGE="https://github.com/ocaml-ppx/ocaml-syntax-shims"
SRC_URI="https://github.com/ocaml-ppx/ocaml-syntax-shims/releases/download/${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
