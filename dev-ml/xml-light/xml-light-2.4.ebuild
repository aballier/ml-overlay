# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Minimal Xml parser and printer for OCaml"
HOMEPAGE="https://github.com/ncannasse/xml-light http://tech.motion-twin.com/xmllight.html"
SRC_URI="https://github.com/ncannasse/xml-light/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE="doc +ocamlopt"

RDEPEND="dev-lang/ocaml:=[ocamlopt?]"
DEPEND="${RDEPEND}"
PATCHES=( "${FILESDIR}/oc50.patch" )

src_compile() {
	emake -j1
	if use ocamlopt; then
		emake -j1 opt
	fi
	if use doc;then
		emake doc
	fi
}

src_test() {
	# There are no tests...
	:
}

src_install() {
	dodir /usr/$(get_libdir)/ocaml/${PN}
	emake INSTALLDIR="${D}"/usr/$(get_libdir)/ocaml/${PN} installbyte
	cat > "${D}"/usr/$(get_libdir)/ocaml/${PN}/META << EOF
name="${PN}"
version="${PV}"
description="${DESCRIPTION}"
requires=""
archive(byte)="xml-light.cma"
EOF
	if use ocamlopt; then
		emake INSTALLDIR="${D}"/usr/$(get_libdir)/ocaml/${PN} installopt
		echo 'archive(native)="xml-light.cmxa"' >> "${D}"/usr/$(get_libdir)/ocaml/${PN}/META
	fi
	dodoc README
	if use doc; then
		emake doc
		docinto html
		dodoc doc/*
	fi
}
