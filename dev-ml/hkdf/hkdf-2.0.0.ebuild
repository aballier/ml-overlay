# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P=${PN}-v${PV}
DESCRIPTION="HMAC-based Extract-and-Expand Key Derivation Function (RFC 5869)"
HOMEPAGE="https://github.com/hannesm/ocaml-hkdf"
SRC_URI="https://github.com/hannesm/ocaml-hkdf/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${MY_P}"
