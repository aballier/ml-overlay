# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit opam eutils

DESCRIPTION="nanomsg bindings for OCaml"
HOMEPAGE="https://github.com/rgrinberg/onanomsg"
SRC_URI="https://github.com/rgrinberg/onanomsg/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="WTFPL-2"
SLOT="0/${PV}-bigstring-lwt4-ipaddr3"
KEYWORDS="~amd64"
IUSE="+lwt +ocamlopt test"

RDEPEND="
	dev-libs/nanomsg:=
	dev-lang/ocaml:=[ocamlopt?]
	dev-ml/ocaml-ctypes:=
	dev-ml/ipaddr:=[ocamlopt?]
		dev-ml/sexplib:=
	dev-ml/ppx_deriving:=[ocamlopt?]
	dev-ml/containers:=[ocamlopt(+)?]
	dev-ml/bigstring:=
	lwt? ( dev-ml/lwt:=[ocamlopt(+)?] dev-ml/lwt_ppx:= )
	!dev-ml/onanomsg
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit )
"
S="${WORKDIR}/onanomsg-${PV}"

src_prepare() {
	epatch "${FILESDIR}/bigstring.patch" \
		"${FILESDIR}/tests.patch" \
		"${FILESDIR}/testrun.patch" \
		"${FILESDIR}/thread.patch" \
		"${FILESDIR}/lwt4.patch" \
		"${FILESDIR}/ipaddr3.patch"
	default
}

src_compile() {
	ocaml pkg/build.ml \
		native=$(usex ocamlopt true false) \
		native-dynlink=$(usex ocamlopt true false) \
		lwt=$(usex lwt true false) \
		ounit=$(usex test true false) \
		|| die
}
