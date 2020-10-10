# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="Functional HTML scraping and rewriting with CSS in OCaml"
HOMEPAGE="https://github.com/aantron/lambda-soup"
SRC_URI="https://github.com/aantron/lambda-soup/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 )"
BDEPEND=""
PATCHES=( "${FILESDIR}/ounit2.patch" )
