# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Jane Street Capital's asynchronous execution library"
HOMEPAGE="https://github.com/janestreet/async"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/async_extra:=
	dev-ml/async_kernel:=
	dev-ml/async_rpc_kernel:=
	dev-ml/async_unix:=
	dev-ml/core:=
		dev-ml/sexplib:=
			dev-ml/parsexp:=
				dev-ml/base:=
			dev-ml/sexplib0:=
			dev-ml/num:=
	dev-ml/core_kernel:=
	dev-ml/ppx_jane:=
		dev-ml/ocaml-migrate-parsetree:=
		dev-ml/ppxlib:=
	dev-ml/textutils:=
"
DEPEND="${RDEPEND}"
