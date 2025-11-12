# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# Can't use opam-installer here as it is an opam dep...
OPAM_INSTALLER_DEP=""

inherit findlib opam

DESCRIPTION="The transitory OCaml software packager"
HOMEPAGE="http://erratique.ch/software/topkg https://github.com/dbuenzli/topkg"
SRC_URI="https://erratique.ch/software/topkg/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

src_compile() {
	ocaml pkg/pkg.ml build --pkg-name ${PN} || die
}

src_install() {
	# Can't use opam-installer here as it is an opam dep...
	findlib_src_preinst
	local nativelibs="$(echo _build/src/${PN}*.cm{x,xa,xs,ti} _build/src/${PN}.a)"
	ocamlfind install ${PN} _build/pkg/META _build/src/${PN}.mli _build/src/${PN}.cm{a,i} ${nativelibs} || die
	dodoc CHANGES.md DEVEL.md README.md
}
