# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Reports the current time"
HOMEPAGE="https://github.com/janestreet/time_now"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/base:=
	dev-ml/jane-street-headers:=
	dev-ml/jst-config:=
	dev-ml/ppx_base:=
	dev-ml/ppx_optcomp:=
"
RDEPEND="${DEPEND}"
