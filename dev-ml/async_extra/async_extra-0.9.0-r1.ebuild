# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Jane Street Capital's asynchronous execution library (extra)"
HOMEPAGE="https://github.com/janestreet/async_extra"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/async_kernel:=
	dev-ml/async_rpc_kernel:=
	dev-ml/async_unix:=
	dev-ml/core:=
	dev-ml/ppx_driver:=
	dev-ml/ppx_jane:=
	dev-ml/ocaml-migrate-parsetree:=
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )
"
DEPEND="${RDEPEND}"
