# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Support Library for type-driven code generators"
HOMEPAGE="https://github.com/janestreet/ppx_sexp_conv"
SRC_URI="https://github.com/janestreet/ppx_sexp_conv/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc"
IUSE=""

DEPEND="
	>=dev-ml/ppx_core-0.10.0:=
	>=dev-ml/ppx_driver-0.10.0:=
	>=dev-ml/ppx_type_conv-0.10.0:=
	>=dev-ml/ppx_metaquot-0.10.0:=
	dev-ml/ppx_optcomp:=
	>=dev-ml/sexplib-0.10.0:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppx_traverse_builtins:=
	"
RDEPEND="${DEPEND}"
