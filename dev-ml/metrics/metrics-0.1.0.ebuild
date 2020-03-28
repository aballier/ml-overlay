# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Infrastructure to collect metrics from OCaml applications"
HOMEPAGE="https://github.com/mirage/metrics"
SRC_URI="https://github.com/mirage/metrics/releases/download/${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/fmt:=
"
DEPEND="${RDEPEND}
	test? ( dev-ml/alcotest )
"
BDEPEND=""
