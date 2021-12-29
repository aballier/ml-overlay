# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder vcs-snapshot

DESCRIPTION="Diffs on XML trees"
HOMEPAGE="https://zoggy.github.io/xmldiff/"
SRC_URI="https://framagit.org/zoggy/xmldiff/-/archive/${PV}/xtmpl-${PV}.tar.bz2 -> ${P}.tar.bz2"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
