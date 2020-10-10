# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Collect profiling information"
HOMEPAGE="https://github.com/mirage/mirage-profile https://mirage.io"
SRC_URI="https://github.com/mirage/mirage-profile/archive/v${PV}.tar.gz -> mirage-profile-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

S="${WORKDIR}/mirage-profile-${PV}"

RESTRICT="test"
