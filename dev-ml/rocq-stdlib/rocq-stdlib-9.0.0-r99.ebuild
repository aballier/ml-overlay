# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="The Coq Proof Assistant -- Core Binaries and Tools"
HOMEPAGE="http://coq.inria.fr/"
SRC_URI="https://github.com/rocq-prover/stdlib/releases/download/V${PV}/stdlib-${PV}.tar.gz -> rocq-stdlib-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	!<sci-mathematics/coq-8.14.1
	!<dev-ml/coq-core-9
"
BDEPEND=""
S="${WORKDIR}/stdlib-${PV}"
