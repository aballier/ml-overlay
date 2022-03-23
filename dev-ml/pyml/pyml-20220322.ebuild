# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib

DESCRIPTION="OCaml bindings for Python"
HOMEPAGE="https://github.com/thierry-martinez/pyml"
SRC_URI="https://github.com/thierry-martinez/pyml/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-lang/ocaml:=
	dev-ml/stdcompat:=
	dev-ml/utop:=
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	findlib_src_preinst
	default
}
