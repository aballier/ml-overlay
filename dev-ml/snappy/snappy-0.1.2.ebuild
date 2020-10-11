# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OCaml bindings to snappy fast compression/decompression library"
HOMEPAGE="http://ygrek.org.ua/p/ocaml-snappy/"
SRC_URI="https://github.com/ygrek/ocaml-snappy/releases/download/v${PV}/ocaml-${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-arch/snappy:="
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}"
S="${WORKDIR}/ocaml-${P}"
