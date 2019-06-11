# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Read and write pcap-formatted network packet traces."
HOMEPAGE="https://github.com/mirage/ocaml-pcap https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-pcap/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/cstruct:=
	dev-ml/ppx_cstruct:=

	!dev-ml/ocaml-pcap
"
DEPEND="
	dev-ml/ppx_tools
	test? ( dev-ml/ounit )
	${RDEPEND}
"

S="${WORKDIR}/ocaml-pcap-${PV}"
