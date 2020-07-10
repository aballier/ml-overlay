# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Time-zone handling"
HOMEPAGE="https://github.com/janestreet/timezone"
SRC_URI="https://github.com/janestreet/timezone/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/core_kernel:=
	dev-ml/ppx_jane:=
		dev-ml/ppxlib:=
"
RDEPEND="${DEPEND}"
BDEPEND=""
