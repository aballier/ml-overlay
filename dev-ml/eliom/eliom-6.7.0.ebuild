# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils multilib findlib opam

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
	dev-ml/js_of_ocaml:=
	dev-ml/js_of_ocaml-lwt:=
	dev-ml/js_of_ocaml-ppx:=
	dev-ml/js_of_ocaml-ppx_deriving_json:=
	dev-ml/js_of_ocaml-tyxml:=
	dev-ml/result:=

	>=www-servers/ocsigenserver-2.10:=
	>=dev-ml/tyxml-4.3:=
	>=dev-ml/deriving-0.6:=
	>=dev-ml/reactiveData-0.2.1:=
	dev-ml/ipaddr:=
	dev-ml/react:=
	dev-ml/ssl:=
	>=dev-ml/lwt-2.5.0:=
	dev-ml/lwt_log:=
	dev-ml/lwt_ppx:=
	dev-ml/lwt_camlp4:=
	dev-ml/camlp4:=
	ppx? ( >=dev-ml/ppx_tools-0.99.3:= )"
DEPEND="${RDEPEND}
	dev-ml/js_of_ocaml-ocamlbuild
	dev-ml/ocamlbuild"

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
	opam-installer \
		--prefix="${ED}/usr" \
		--libdir="${D}/$(ocamlc -where)" \
		--docdir="${ED}/usr/share/doc/${PF}" \
		--mandir="${ED}/usr/share/man" \
		|| die
	dodoc CHANGES README.md
	if use doc ; then
		docinto client/html
		dodoc -r _build/src/lib/client/api.docdir/*
		docinto server/html
		dodoc -r _build/src/lib/server/api.docdir/*
	fi
}
