# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Randomized testing framework, designed for compatibility with Base "
HOMEPAGE="https://github.com/janestreet/base_quickcheck"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/base:=
	dev-ml/ppx_base:=
	dev-ml/ppx_fields_conv:=
	dev-ml/ppx_let:=
	dev-ml/ppx_sexp_message:=
	dev-ml/splittable_random:=
	dev-ml/ppxlib:=
		dev-ml/ocaml-migrate-parsetree:=
"
RDEPEND="${DEPEND}"
