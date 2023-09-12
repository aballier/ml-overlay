# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder desktop

DESCRIPTION="The Coq Proof Assistant"
HOMEPAGE="http://coq.inria.fr/"
SRC_URI="https://github.com/coq/coq/archive/V${PV}.tar.gz -> coq-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-ml/lablgtk3-sourceview3:="
RDEPEND="${DEPEND}
	!<sci-mathematics/coq-8.14.1
	x11-themes/adwaita-icon-theme
"
BDEPEND=""
S="${WORKDIR}/coq-${PV}"

src_configure() {
	ocaml_lib=$(ocamlc -where)
	local myconf=(
		-prefix /usr
		-libdir /usr/$(get_libdir)/ocaml/coq
		-mandir /usr/share/man
		-docdir /usr/share/doc/${PF}
		-configdir /etc/xdg/${PN}
		)

	./configure ${myconf[@]} || die "configure failed"
}

src_install() {
	jbuilder_src_install
	make_desktop_entry "coqide" "Coq IDE" "${EPREFIX}/usr/share/coq/coq.png"
}
