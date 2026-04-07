# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Test framework for OCaml"
HOMEPAGE="https://github.com/mjambon/testo"
SRC_URI="https://github.com/mjambon/testo/releases/download/${PV}/testo-${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/testo-${PV}"
