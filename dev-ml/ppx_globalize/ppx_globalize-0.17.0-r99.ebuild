# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Generates functions to copy local values to the global heap"
HOMEPAGE="https://github.com/janestreet/ppx_globalize"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=(
	"${FILESDIR}/ppxlib1.patch"
	"${FILESDIR}/ppxlib.patch"
)
