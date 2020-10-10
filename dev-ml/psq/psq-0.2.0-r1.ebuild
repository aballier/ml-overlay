# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="Functional Priority Search Queues for OCaml"
HOMEPAGE="https://github.com/pqwy/psq"
SRC_URI="https://github.com/pqwy/psq/releases/download/v${PV}/${PN}-v${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

DEPEND="${DEPEND}
	test? ( dev-ml/qcheck-core dev-ml/qcheck-alcotest dev-ml/alcotest )"

S="${WORKDIR}/${PN}-v${PV}"
