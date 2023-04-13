# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Code coverage for OCaml and Reason"
HOMEPAGE="https://github.com/aantron/bisect_ppx"
SRC_URI="https://github.com/aantron/bisect_ppx/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}-ppxlib"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""
PATCHES=( "${FILESDIR}/ppxlib2.patch" )
