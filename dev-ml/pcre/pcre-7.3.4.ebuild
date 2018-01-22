# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="Perl Compatibility Regular Expressions for O'Caml"
HOMEPAGE="http://mmottl.github.io/pcre-ocaml/ https://github.com/mmottl/pcre-ocaml"
SRC_URI="https://github.com/mmottl/pcre-ocaml/releases/download/${PV}/${P}.tbz -> ocaml-${P}.tbz"
LICENSE="LGPL-2.1-with-linking-exception"
IUSE="examples"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~ppc ~x86-fbsd"

RDEPEND=">=dev-libs/libpcre-4.5
	!dev-ml/pcre-ocaml"
DEPEND="${RDEPEND}
	dev-ml/base
	dev-ml/stdio
	dev-ml/configurator
"

S="${WORKDIR}/pcre-${PV}"

src_install() {
	opam_src_install

	if use examples ; then
		insinto /usr/share/doc/${PF}
		doins -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
}
