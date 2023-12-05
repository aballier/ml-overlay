# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Transport Layer Security purely in OCaml"
HOMEPAGE="https://github.com/mirleft/ocaml-tls"
SRC_URI="https://github.com/mirleft/ocaml-tls/releases/download/v${PV}/tls-${PV}.tbz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/tls-${PV}"
