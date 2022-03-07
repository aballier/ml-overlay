# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Write tests, let a fuzzer find failing cases"
HOMEPAGE="https://github.com/stedolan/crowbar"
SRC_URI="https://github.com/stedolan/crowbar/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
PATCHES=( "${FILESDIR}/tests.patch" )
