# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Websocket library for OCaml"
HOMEPAGE="https://github.com/vbmithr/ocaml-websocket"
SRC_URI="https://github.com/vbmithr/ocaml-websocket/archive/${PV}.tar.gz -> ocaml-websocket-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/websocket:=
	dev-ml/async_unix:=
	dev-ml/async_extra:=
	dev-ml/cohttp-async:=
		dev-ml/sexplib:=
	dev-ml/conduit-async:=
	dev-ml/num:=
	dev-ml/logs-async:=
		dev-ml/logs:=
	dev-ml/logs-async-reporter:=

	!dev-ml/ocaml-websocket
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/ocaml-websocket-${PV}"
