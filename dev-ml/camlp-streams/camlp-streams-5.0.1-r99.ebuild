# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Stream and Genlex libraries for use with Camlp4 and Camlp5"
HOMEPAGE="https://github.com/ocaml/camlp-streams"
SRC_URI="https://github.com/ocaml/camlp-streams/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
