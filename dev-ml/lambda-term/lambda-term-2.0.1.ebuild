# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="A cross-platform library for manipulating the terminal"
HOMEPAGE="https://github.com/diml/lambda-term"
SRC_URI="https://github.com/diml/lambda-term/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="
	dev-ml/lwt_react:=
		dev-ml/result:=
	>=dev-ml/lwt-2.4.0:=
	dev-ml/lwt_log:=
	>=dev-ml/zed-2:=
	dev-ml/camomile:=
	>=dev-ml/react-1.2:=
"
RDEPEND="${DEPEND}"
