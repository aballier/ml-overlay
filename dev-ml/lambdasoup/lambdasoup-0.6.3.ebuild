# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Functional HTML scraping and rewriting with CSS in OCaml"
HOMEPAGE="https://github.com/aantron/lambda-soup"
SRC_URI="https://github.com/aantron/lambda-soup/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-ml/markup:="
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit )"
BDEPEND=""
S="${WORKDIR}/lambda-soup-${PV}"
