# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="double-to-ascii ocaml implementation"
SRC_URI="https://github.com/flowtype/ocaml-dtoa/releases/download/v${PV}/${P}.tbz"
HOMEPAGE="https://github.com/flowtype/ocaml-dtoa"

SLOT="0/${PV}"
LICENSE="MIT"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit )"
