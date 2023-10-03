# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Parser for odoc markup"
HOMEPAGE="https://github.com/ocaml/odoc"
SRC_URI="https://github.com/ocaml/odoc/releases/download/v${PV}/odoc-${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/odoc-${PV}"
