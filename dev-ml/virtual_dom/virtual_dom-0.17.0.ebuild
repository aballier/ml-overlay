# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Virtual DOM diffing library"
HOMEPAGE="https://github.com/janestreet/virtual_dom"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
PATCHES=(
	"${FILESDIR}/oc53.patch"
	"${FILESDIR}/jsoo.patch"
)
