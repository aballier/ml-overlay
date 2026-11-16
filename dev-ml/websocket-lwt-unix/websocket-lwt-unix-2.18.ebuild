# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Websocket library for OCaml"
HOMEPAGE="https://github.com/vbmithr/ocaml-websocket"
SRC_URI="https://github.com/vbmithr/ocaml-websocket/releases/download/${PV}/${P}.tbz -> ocaml-websocket-${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}-conduit3"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/websocket-${PV}"
