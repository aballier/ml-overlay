# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Libraries and module types for portable clocks"
HOMEPAGE="https://github.com/mirage/mirage-clock"
SRC_URI="https://github.com/mirage/mirage-clock/releases/download/v${PV}/mirage-clock-${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/mirage-clock-${PV}"
