# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="QuickCheck inspired property-based testing for OCaml"
HOMEPAGE="https://github.com/c-cube/qcheck/"
SRC_URI="https://github.com/c-cube/qcheck/archive/v${PV}.tar.gz -> qcheck-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/qcheck-${PV}"
