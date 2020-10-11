# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P="ezjsonm-v${PV}"
DESCRIPTION="An easy interface on top of the Jsonm library"
HOMEPAGE="https://github.com/mirage/ezjsonm"
SRC_URI="https://github.com/mirage/ezjsonm/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/${MY_P}"
