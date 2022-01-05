# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_SKIP_VALIDATION=yes
inherit jbuilder

DESCRIPTION="LR(1) parser generator for the OCaml language"
HOMEPAGE="http://gallium.inria.fr/~fpottier/menhir/ https://gitlab.inria.fr/fpottier/menhir"
SRC_URI="https://gitlab.inria.fr/fpottier/menhir/-/archive/${PV}/menhir-${PV}.tar.bz2"

LICENSE="GPL-2 LGPL-2-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND="!<dev-ml/menhir-20200123"
DEPEND="${RDEPEND}"
BDEPEND=""
S="${WORKDIR}/menhir-${PV}"
