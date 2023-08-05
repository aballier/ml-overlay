# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit opam

DESCRIPTION="nanomsg bindings for OCaml"
HOMEPAGE="https://github.com/rgrinberg/onanomsg"
SRC_URI="https://github.com/rgrinberg/onanomsg/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="WTFPL-2"
SLOT="0/${PV}-bigstring-lwt4-ipaddr3"
KEYWORDS="~amd64"
IUSE="+lwt +ocamlopt test"

RDEPEND="
	dev-libs/nanomsg:=
	lwt? ( dev-ml/lwt:=[ocamlopt(+)?] dev-ml/lwt_ppx:= )
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 )
"
S="${WORKDIR}/onanomsg-${PV}"
OPAM_FILE=opam

PATCHES=(
	"${FILESDIR}/bigstring.patch"
	"${FILESDIR}/tests.patch"
	"${FILESDIR}/testrun.patch"
	"${FILESDIR}/thread.patch"
	"${FILESDIR}/lwt4.patch"
	"${FILESDIR}/ipaddr3.patch"
	"${FILESDIR}/ounit2.patch"
	"${FILESDIR}/opam.patch"
	"${FILESDIR}/ctypes.patch"
)

src_compile() {
	ocaml pkg/build.ml \
		native=$(usex ocamlopt true false) \
		native-dynlink=$(usex ocamlopt true false) \
		lwt=$(usex lwt true false) \
		ounit=$(usex test true false) \
		|| die
}
