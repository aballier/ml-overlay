# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib eutils

DESCRIPTION="OCaml SDL Bindings"

HOMEPAGE="http://ocamlsdl.sourceforge.net"
SRC_URI="mirror://sourceforge/ocamlsdl/${P}.tar.gz"
LICENSE="LGPL-2"

SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc +ocamlopt opengl truetype" #noimage nomixer

RDEPEND="
	>=dev-lang/ocaml-3.12:=[ocamlopt=]
	>=media-libs/libsdl-1.2
	opengl? ( >=dev-ml/lablgl-0.98:= )
	>=media-libs/sdl-mixer-1.2
	>=media-libs/sdl-image-1.2
	truetype? ( >=media-libs/sdl-ttf-2.0 )
"
DEPEND="${RDEPEND}"
PATCHES=(
	"${FILESDIR}/ocamlopt.patch"
	"${FILESDIR}/oc406.patch"
	"${FILESDIR}/oc5.patch"
)

src_configure() {
	myconf=""
	if use opengl; then
		destdir=`ocamlfind printconf destdir`
		lablgldir=`find ${destdir} -name "lablgl" -or -name "lablGL"`
		if [ -z "${lablgldir}" ]; then
			destdir=`ocamlc -where`
			lablgldir=`find ${destdir} -name "lablgl" -or -name "lablGL"`
		fi

		if [ ! -z "${lablgldir}" ]; then
			myconf="--with-lablgldir=${lablgldir}"
		fi
	fi

	#use noimage && myconf="${myconf} --without-sdl-image"
	#use nomixer && myconf="${myconf} --without-sdl-mixer"

	econf $myconf \
		`use_enable truetype sdl-ttf`
}

src_install() {
	findlib_src_install

	dodoc AUTHORS NEWS README
	doinfo doc/*.info*

	if use doc; then
		dohtml doc/html/*
	fi
}
