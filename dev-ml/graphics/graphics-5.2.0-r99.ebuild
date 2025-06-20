# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="The Graphics library from OCaml"
HOMEPAGE="https://github.com/ocaml/graphics"
SRC_URI="https://github.com/ocaml/graphics/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="
	x11-libs/libX11
	x11-libs/libXft"
RDEPEND="${DEPEND}
	!<dev-ml/findlib-1.8.1-r1
"
BDEPEND=""
