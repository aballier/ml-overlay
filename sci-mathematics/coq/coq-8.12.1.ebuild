# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit desktop

MY_PV=${PV/_beta/+beta}
MY_P=${PN}-${MY_PV}

DESCRIPTION="Proof assistant written in O'Caml"
HOMEPAGE="http://coq.inria.fr/"
SRC_URI="https://github.com/coq/coq/archive/V${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gtk debug +ocamlopt doc"

RDEPEND="
	>=dev-lang/ocaml-3.11.2:=[ocamlopt?]
	dev-ml/num:=
	gtk? (
		dev-ml/lablgtk3:=
		dev-ml/lablgtk3-sourceview3:=
		)"
DEPEND="${RDEPEND}"
BDEPEND="
	dev-ml/findlib
	doc? (
		media-libs/netpbm[png,zlib]
		virtual/latex-base
		dev-tex/hevea
		dev-texlive/texlive-pictures
		dev-texlive/texlive-mathscience
		dev-texlive/texlive-latexextra
		)"

S=${WORKDIR}/${PN}-${PV/_beta/-beta}

src_configure() {
	ocaml_lib=$(ocamlc -where)
	local myconf=(
		-prefix /usr
		-bindir /usr/bin
		-libdir /usr/$(get_libdir)/coq
		-mandir /usr/share/man
		-coqdocdir /usr/$(get_libdir)/coq/coqdoc
		-docdir /usr/share/doc/${PF}
		-configdir /etc/xdg/${PN}
		)

	use debug && myconf+=( -debug )
	use doc || myconf+=( -with-doc no )

	if use gtk; then
		if use ocamlopt; then
			myconf+=( -coqide opt )
		else
			myconf+=( -coqide byte )
		fi
	else
		myconf+=( -coqide no )
	fi

	use ocamlopt || myconf+=( -byte-only )

	export CAML_LD_LIBRARY_PATH="${S}/kernel/byterun/"
	./configure ${myconf[@]} || die "configure failed"
}

src_compile() {
	emake STRIP="true" world VERBOSE=1
}

src_test() {
	emake STRIP="true" check VERBOSE=1
}

src_install() {
	emake STRIP="true" COQINSTALLPREFIX="${D}" install VERBOSE=1
	dodoc README.md CREDITS

	use gtk && make_desktop_entry "coqide" "Coq IDE" "${EPREFIX}/usr/share/coq/coq.png"
}
