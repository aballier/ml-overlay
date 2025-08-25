# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Stdcompat: compatibility module for OCaml standard library"
HOMEPAGE="https://github.com/ocamllibs/stdcompat"
SRC_URI="https://github.com/ocamllibs/stdcompat/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""


src_configure() {
	:
}
