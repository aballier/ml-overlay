# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Feature-full driver for OCaml AST transformers"
HOMEPAGE="https://github.com/janestreet/ppx_driver"
SRC_URI="https://github.com/janestreet/ppx_driver/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND="
	>=dev-ml/ppx_core-0.10.0:=
	  dev-ml/stdio:=
	>=dev-ml/ppx_optcomp-0.10.0:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ocamlbuild:="
RDEPEND="${DEPEND}"
