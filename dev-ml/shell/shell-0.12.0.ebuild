# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Yet another implementation of fork&exec and related functionality "
HOMEPAGE="https://github.com/janestreet/shell"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/core:=
	dev-ml/core_kernel:=
	dev-ml/jst-config:=
	dev-ml/ppx_jane:=
	dev-ml/re2:=
	dev-ml/textutils:=
	dev-ml/spawn:=
"
RDEPEND="${DEPEND}"
