# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Password based key derivation functions (PBKDF) from PKCS#5"
HOMEPAGE="https://github.com/abeaumont/ocaml-pbkdf"
SRC_URI="https://github.com/abeaumont/ocaml-pbkdf/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/ocaml-${P}"
