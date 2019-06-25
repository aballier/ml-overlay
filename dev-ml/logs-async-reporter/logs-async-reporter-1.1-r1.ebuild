# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Logs asynchronous logger & reporter for Async"
HOMEPAGE="https://github.com/vbmithr/logs-async"
SRC_URI="https://github.com/vbmithr/logs-async/releases/download/${PV}/logs-async-${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/logs:=
	dev-ml/fmt:=
	dev-ml/async:=
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

S="${WORKDIR}/logs-async-${PV}"
