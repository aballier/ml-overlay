# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Websocket library for OCaml"
HOMEPAGE="https://github.com/vbmithr/ocaml-websocket"
SRC_URI="https://github.com/vbmithr/ocaml-websocket/archive/${PV}.tar.gz -> ocaml-websocket-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

S="${WORKDIR}/ocaml-websocket-${PV}"
PATCHES=( "${FILESDIR}/core.patch" )
