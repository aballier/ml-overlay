# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Scalable LRU caches for OCaml"
HOMEPAGE="https://github.com/pqwy/lru"
SRC_URI="https://github.com/pqwy/lru/releases/download/v${PV}/${PN}-v${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
	dev-ml/psq:=
"
RDEPEND="${DEPEND}"
BDEPEND=""
DEPEND="${DEPEND}
	test? ( dev-ml/qcheck-core dev-ml/qcheck-alcotest dev-ml/alcotest )"
S="${WORKDIR}/${PN}-v${PV}"
