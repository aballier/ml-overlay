# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="An OCaml lexer generator for Unicode"
HOMEPAGE="https://github.com/alainfrisch/sedlex"
SRC_URI="https://github.com/alainfrisch/sedlex/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/ppxlib.patch" )
