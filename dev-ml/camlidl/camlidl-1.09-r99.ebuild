# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit toolchain-funcs

MY_P="${PN}${PV/./}"
DESCRIPTION="CamlIDL is a stub code generator for using C/C++ libraries from O'Caml"
HOMEPAGE="https://github.com/xavierleroy/camlidl"
SRC_URI="https://github.com/xavierleroy/camlidl/archive/${MY_P}.tar.gz"
LICENSE="QPL-1.0 LGPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE=""
DEPEND=">=dev-lang/ocaml-3.10.2:=[ocamlopt]"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}-${MY_P}"

PATCHES=(
	"${FILESDIR}/nowarn.patch"
	"${FILESDIR}/oc50.patch"
)

src_compile() {
	# Use the UNIX makefile
	libdir=`ocamlc -where`
	sed -i -e "s|OCAMLLIB=.*|OCAMLLIB=${libdir}|" config/Makefile.unix
	sed -i -e "s|BINDIR=.*|BINDIR=${EPREFIX}/usr/bin|" config/Makefile.unix
	ln -s Makefile.unix config/Makefile

	# Make
	emake -j1
}

src_test() {
	einfo "Running tests..."
	cd tests
	emake CCPP="$(tc-getCXX)"
}

src_install() {
	libdir=`ocamlc -where`
	dodir "${libdir#${EPREFIX}}"/{caml,stublibs}
	dodir /usr/bin
	# Install
	emake BINDIR="${ED}/usr/bin" OCAMLLIB="${D}${libdir}" install

	# Add package header
	sed -e "s/@VERSION/${P}/g" "${FILESDIR}/META.camlidl" >	"${D}${libdir}/META.camlidl" || die

	# Documentation
	dodoc README Changes
}
