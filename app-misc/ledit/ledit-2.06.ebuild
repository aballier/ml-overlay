# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

RESTRICT="installsources"
IUSE="+ocamlopt"

DESCRIPTION="A line editor to be used with interactive commands"
SRC_URI="https://github.com/chetmurthy/ledit/archive/${PN}-$(ver_rs 0- '-').tar.gz"
HOMEPAGE="http://pauillac.inria.fr/~ddr/ledit/ https://github.com/chetmurthy/ledit"

DEPEND=">=dev-lang/ocaml-3.09:=[ocamlopt?]
	dev-ml/camlp5:=
	dev-ml/camlp-streams:="
RDEPEND="${DEPEND}"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~ppc ~x86"
S="${WORKDIR}/${PN}-${PN}-$(ver_rs 0- '-')"
PATCHES=( "${FILESDIR}/camlp.patch" )

src_compile() {
	emake -j1 all
	if use ocamlopt; then
		emake -j1 ledit.opt
	fi
}

src_install() {
	if use ocamlopt; then
		newbin ledit.opt ledit
	else
		newbin ledit.out ledit
		# If using bytecode we dont want to strip the binary as it would remove the
		# bytecode and only leave ocamlrun...
		dostrip -x "/usr/bin/ledit"
	fi
	doman ledit.1
	dodoc CHANGES README
}
