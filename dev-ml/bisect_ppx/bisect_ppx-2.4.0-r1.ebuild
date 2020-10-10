# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Code coverage for OCaml and Reason"
HOMEPAGE="https://github.com/aantron/bisect_ppx"
SRC_URI="https://github.com/aantron/bisect_ppx/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 )
"
BDEPEND=""
