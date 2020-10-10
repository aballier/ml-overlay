# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Resizable Array and Buffer modules for O'Caml"
HOMEPAGE="http://mmottl.github.io/res/"
SRC_URI="https://github.com/mmottl/res/releases/download/${PV}/${P}.tbz"
LICENSE="LGPL-2.1-with-linking-exception"

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-ml/findlib-1.5"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""
