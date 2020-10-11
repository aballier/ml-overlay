# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="double-to-ascii ocaml implementation"
SRC_URI="https://github.com/flowtype/ocaml-dtoa/releases/download/v${PV}/${PN}-v${PV}.tbz"
HOMEPAGE="https://github.com/flowtype/ocaml-dtoa"

SLOT="0/${PV}"
LICENSE="MIT"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/${PN}-v${PV}"
PATCHES=( "${FILESDIR}/ounit2.patch" )
