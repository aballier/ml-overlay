# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit opam findlib

DESCRIPTION="Read and write pcap-formatted network packet traces."
HOMEPAGE="https://github.com/mirage/ocaml-pcap https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-pcap/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/cstruct:=

	!dev-ml/ocaml-pcap
"
DEPEND="
	dev-ml/topkg
	dev-ml/ocamlbuild
	dev-ml/ppx_tools
	test? ( dev-ml/ounit )
	${RDEPEND}
"

S="${WORKDIR}/ocaml-pcap-${PV}"

src_compile() {
	ocaml pkg/pkg.ml build --tests "$(usex test "true" "false")" || die
}

src_test() {
	ocaml pkg/pkg.ml test || die
}
