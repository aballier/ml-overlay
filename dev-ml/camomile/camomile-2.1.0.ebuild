# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Camomile is a comprehensive Unicode library for ocaml"
HOMEPAGE="https://github.com/savonet/Camomile https://github.com/yoriyuki/Camomile/wiki"
SRC_URI="https://github.com/savonet/Camomile/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/Camomile-${PV}"
