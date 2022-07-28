# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Module which offers basic control of ANSI compliant terminals"
HOMEPAGE="https://github.com/Chris00/ANSITerminal"
SRC_URI="https://github.com/Chris00/ANSITerminal/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="LGPL-3-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
RDEPEND=""
DEPEND="${DEPEND}"
IUSE=""
