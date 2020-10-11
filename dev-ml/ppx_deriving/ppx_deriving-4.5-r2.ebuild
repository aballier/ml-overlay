# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Type-driven code generation for OCaml"
HOMEPAGE="https://github.com/ocaml-ppx/ppx_deriving"
SRC_URI="https://github.com/ocaml-ppx/ppx_deriving/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/ounit2.patch" )
