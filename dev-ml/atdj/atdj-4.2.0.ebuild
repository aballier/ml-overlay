# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Generates a Java interface from type definitions"
HOMEPAGE="https://github.com/ahrefs/atd"
SRC_URI="https://github.com/ahrefs/atd/releases/download/${PV}/atd-${PV}.tbz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( virtual/jdk )
"
S="${WORKDIR}/atd-${PV}"
