# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Syntax for cross-language type definitions"
HOMEPAGE="https://github.com/ahrefs/atd"
SRC_URI="https://github.com/ahrefs/atd/releases/download/${PV}/atdts-${PV}.tbz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/atdts-${PV}"
PATCHES=("${FILESDIR}/yojson.patch")
