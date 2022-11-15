# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A pure OCaml implementation of the DNS protocol"
HOMEPAGE="https://github.com/mirage/ocaml-dns https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-${PN}/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="LGPL-2 LGPL-2.1-with-linking-exception ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocaml-${P}"
