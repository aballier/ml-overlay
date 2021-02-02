# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib

IUSE="+ocamlopt"

DESCRIPTION="A package for ocaml that provides access to mysql databases"
SRC_URI="https://github.com/ygrek/ocaml-mysql/releases/download/v${PV}/${P}.tar.gz"
HOMEPAGE="https://ygrek.org/p/ocaml-mysql/"

DEPEND=">=dev-lang/ocaml-3.10.2:=[ocamlopt?]
	sys-libs/zlib
	dev-db/mysql-connector-c:0="

RDEPEND="$DEPEND"

SLOT="0/${PV}"
LICENSE="LGPL-2"
KEYWORDS="~amd64 ~ppc ~x86"
PATCHES=( "${FILESDIR}/mysql8.patch" )

src_compile()
{
	emake all
	if use ocamlopt; then
		emake -j1 opt
	fi
}

src_install()
{
	findlib_src_preinst
	emake install

	dodoc CHANGES README VERSION
}
