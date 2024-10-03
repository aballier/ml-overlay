# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit multilib findlib

MY_P=${P%_p*}
DESCRIPTION="A preprocessor-pretty-printer of ocaml"
HOMEPAGE="https://camlp5.github.io/"
SRC_URI="https://github.com/camlp5/camlp5/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc +ocamlopt"

DEPEND=">=dev-lang/ocaml-3.10:=[ocamlopt?]
	dev-ml/camlp-streams:=
	dev-ml/re:=
	dev-ml/pcre:=
	dev-ml/rresult:=
	dev-ml/bos:=
	dev-ml/fmt:=
"
RDEPEND="${DEPEND}"

PATCHLEVEL=${PV#*_p}
PATCHLIST=""

if [ "${PATCHLEVEL}" != "${PV}" ] ; then
	for (( i=1; i<=PATCHLEVEL; i++ )) ; do
		SRC_URI="${SRC_URI}
			http://pauillac.inria.fr/~ddr/camlp5/distrib/src/patch-${PV%_p*}-${i} -> ${MY_P}-patch-${i}.patch"
		PATCHLIST="${PATCHLIST} ${MY_P}-patch-${i}.patch"
	done
fi

camlp5_hack_ocaml_support() {
	ln -s "${1}"    "ocaml_stuff/${2}"              || die
	ln -s "${1}.ml" "ocaml_src/lib/versdep/${2}.ml" || die
}

src_prepare() {
	for i in ${PATCHLIST} ; do
		eapply "${DISTDIR}/${i}"
	done
	default
}

src_configure() {
	./configure \
		--strict \
		-prefix /usr \
		-bindir /usr/bin \
		-libdir /usr/$(get_libdir)/ocaml \
		-mandir /usr/share/man || die "configure failed"
}

src_compile(){
	emake out
	if use ocamlopt; then
		emake  opt
		emake  opt.opt
	fi
}

src_install() {
	emake DESTDIR="${D}" install
	# findlib support
	insinto "$(ocamlfind printconf destdir)/${PN}"
	doins etc/META

	use doc && dohtml -r doc/*

	dodoc CHANGES DEVEL ICHANGES README.md UPGRADING MODE
}
