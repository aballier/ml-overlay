# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Library to parse, pretty print, and evaluate CUDF documents"
HOMEPAGE="http://www.mancoosi.org/cudf/"
SRC_URI="https://gitlab.com/irill/cudf/-/archive/v${PV}/cudf-v${PV}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/${PN}-v${PV}"
