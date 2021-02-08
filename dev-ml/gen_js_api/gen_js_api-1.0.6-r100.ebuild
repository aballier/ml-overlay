# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Easy OCaml bindings for Javascript libraries"
HOMEPAGE="https://github.com/LexiFi/gen_js_api"
SRC_URI="https://github.com/LexiFi/gen_js_api/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}-ppxlib"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/ppxlib.patch"  "${FILESDIR}/412.patch" "${FILESDIR}/ppxlib2.patch" )
