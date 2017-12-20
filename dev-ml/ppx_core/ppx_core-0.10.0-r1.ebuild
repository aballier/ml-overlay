# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Standard library for ppx rewriters"
HOMEPAGE="https://github.com/janestreet/ppx_core"
SRC_URI="https://github.com/janestreet/ppx_core/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc"
IUSE=""

DEPEND="
	>=dev-ml/base-0.9.3:=
	>=dev-ml/ocaml-compiler-libs-0.9:=
	>=dev-ml/ppx_ast-0.10.0:=
	>=dev-ml/ppx_traverse_builtins-0.9:=
	>=dev-ml/stdio-0.9.1:=
"
RDEPEND="${DEPEND}"
