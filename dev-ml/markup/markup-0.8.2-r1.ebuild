# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="Error-recovering streaming HTML5 and XML parsers"
HOMEPAGE="https://github.com/aantron/markup.ml"
SRC_URI="https://github.com/aantron/markup.ml/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/ounit2 )
"
S="${WORKDIR}/${PN}.ml-${PV}"
PATCHES=( "${FILESDIR}/ounit2.patch" )
