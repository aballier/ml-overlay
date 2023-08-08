# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib toolchain-funcs

DESCRIPTION="OCaml interface to the Tcl/Tk GUI framework"
HOMEPAGE="https://forge.ocamlcore.org/projects/labltk/ https://github.com/garrigue/labltk"
SRC_URI="https://github.com/garrigue/labltk/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="QPL-1.0 LGPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~mips ~x86 ~amd64-linux ~x86-linux"
IUSE="+ocamlopt X"

RDEPEND=">=dev-lang/tk-8.0.3:=
	>=dev-lang/ocaml-4.14_beta:=[ocamlopt?]
	X? ( dev-ml/graphics:= x11-libs/libX11 )"
DEPEND="${RDEPEND}
	>=dev-ml/findlib-1.5.5-r1"
PATCHES=( "${FILESDIR}/oc51.patch" )

src_configure() {
	tc-export RANLIB
	./configure --use-findlib --verbose $(usex X "-tk-x11" "--tk-no-x11") || die "configure failed!"
}

src_compile() {
	export SHAREDCCCOMPOPTS="${CFLAGS} -fPIC"
	emake -j1
	use ocamlopt && emake -j1 opt
}

src_install() {
	findlib_src_preinst
	dodir /usr/bin
	emake \
		INSTALLDIR="${D}$(ocamlc -where)/labltk" \
		INSTALLBINDIR="${ED}/usr/bin/" \
		install
	dodoc Changes README.mlTk
}
