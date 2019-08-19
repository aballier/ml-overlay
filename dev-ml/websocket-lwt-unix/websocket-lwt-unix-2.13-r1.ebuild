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
	dev-ml/ipaddr:=
	dev-ml/lwt_log:=
	dev-ml/lwt_ssl:=
		dev-libs/openssl:0=
	dev-ml/cohttp-lwt-unix:=
		dev-ml/cohttp:=

	!dev-ml/ocaml-websocket
"
DEPEND="${RDEPEND}"
PATCHES=( "${FILESDIR}/cohttp.patch" )

S="${WORKDIR}/ocaml-websocket-${PV}"
