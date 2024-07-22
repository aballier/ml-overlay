# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Public Key Infrastructure purely in OCaml"
HOMEPAGE="https://github.com/mirleft/ocaml-x509"
SRC_URI="https://github.com/mirleft/ocaml-x509/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/ocaml-${P}"
