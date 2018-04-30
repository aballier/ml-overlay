# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="PPX rewriter that generates hash functions from type expressions and definitions"
HOMEPAGE="https://github.com/janestreet/ppx_hash"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

DEPEND="
	dev-ml/base:=
	>=dev-ml/ppx_compare-0.10.0:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppxlib:=
"
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/ppxlib.patch" )
