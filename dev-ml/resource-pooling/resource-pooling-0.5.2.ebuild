# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit oasis

DESCRIPTION="Library for pooling resources like connections, threads, or similar"
HOMEPAGE="https://github.com/ocsigen/resource-pooling"
SRC_URI="https://github.com/ocsigen/resource-pooling/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-ml/lwt:=
	dev-ml/lwt_log:=
"
RDEPEND="${DEPEND}"
BDEPEND=""
