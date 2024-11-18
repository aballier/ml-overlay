# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Opam solver using 0install backend using the CUDF interface"
HOMEPAGE="https://github.com/ocaml-opam/opam-0install-cudf"
SRC_URI="https://github.com/ocaml-opam/opam-0install-cudf/releases/download/v${PV}/${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
