# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="Persistent-mode afl-fuzz for ocaml"
HOMEPAGE="https://github.com/stedolan/ocaml-afl-persistent"
SRC_URI="https://github.com/stedolan/ocaml-afl-persistent/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/ocaml-${P}"

src_compile() {
	./build.sh || die
}
