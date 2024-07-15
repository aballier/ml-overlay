# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Package dependency solver"
HOMEPAGE="https://docs.0install.net/developers/solver/ https://github.com/0install/0install"
SRC_URI="https://github.com/0install/0install/releases/download/v${PV}/0install-${PV}.tbz"

LICENSE="LGPL-2.1+"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

S="${WORKDIR}/0install-${PV}"
