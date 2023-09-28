# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib opam

DESCRIPTION="A web framework to program client/server applications"
HOMEPAGE="http://ocsigen.org/eliom/"

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/eliom"
	KEYWORDS=""
else
	SRC_URI="https://github.com/ocsigen/eliom/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
IUSE="doc +ocamlopt +ppx"

RDEPEND=">=dev-lang/ocaml-4.03:=[ocamlopt?]
	ppx? ( >=dev-ml/ppx_tools-0.99.3:= )"
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_compile() {
	if use ocamlopt ; then
		emake PPX=$(usex ppx true false) all
	else
		emake PPX=$(usex ppx true false) byte
	fi
	use doc && emake doc
	emake man
}

src_install() {
	opam_src_install
	dodoc CHANGES README.md
	if use doc ; then
		docinto client/html
		dodoc -r _build/src/lib/client/api.docdir/*
		docinto server/html
		dodoc -r _build/src/lib/server/api.docdir/*
	fi
}
