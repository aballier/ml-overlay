# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Type-driven code generation for OCaml"
HOMEPAGE="https://github.com/ocaml-ppx/ppx_deriving"

if [[ ${PV%_p*} != ${PV} ]] ; then
	COMMIT_ID="a0bae72cbf0f0d4ebae8382bf5583406f5358b6e"
	SRC_URI="https://github.com/ocaml-ppx/ppx_deriving/archive/${COMMIT_ID}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/${PN}-${COMMIT_ID}"
else
	SRC_URI="https://github.com/ocaml-ppx/ppx_deriving/releases/download/${PV}/${P}.tbz"
fi

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
