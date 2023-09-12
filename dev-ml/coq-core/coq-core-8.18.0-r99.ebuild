# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="The Coq Proof Assistant -- Core Binaries and Tools"
HOMEPAGE="http://coq.inria.fr/"
SRC_URI="https://github.com/coq/coq/archive/V${PV}.tar.gz -> coq-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	!<sci-mathematics/coq-8.14.1
"
BDEPEND=""
S="${WORKDIR}/coq-${PV}"

src_configure() {
	ocaml_lib=$(ocamlc -where)
	# not compatible with ocaml 5
	#	-native-compiler $(usex ocamlopt yes no)
	local myconf=(
		-prefix /usr
		-libdir /usr/$(get_libdir)/ocaml/coq
		-mandir /usr/share/man
		-docdir /usr/share/doc/${PF}
		-configdir /etc/xdg/${PN}
		)

	./configure ${myconf[@]} || die "configure failed"
}
