# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{7,8,9,10,11,12,13} )

inherit python-single-r1 bash-completion-r1 elisp-common autotools

MY_P="${P/_/-}"
DESCRIPTION="Program matching and transformation engine"
HOMEPAGE="http://coccinelle.lip6.fr/"
SRC_URI="https://github.com/coccinelle/coccinelle/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc emacs +ocamlopt pcre test vim-syntax"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

CDEPEND=">=dev-lang/ocaml-3.12:=[ocamlopt?]
	dev-ml/sexplib:=
	dev-ml/menhir:=
	dev-ml/parmap:=
	dev-ml/pyml:=
	dev-ml/stdcompat:=
	dev-ml/findlib:=
	emacs? ( app-editors/emacs:* )
	pcre? ( dev-ml/pcre:= )
	${PYTHON_DEPS}"

RDEPEND="${CDEPEND}
	vim-syntax? ( || ( app-editors/vim app-editors/gvim ) )"

# dev-texlive/texlive-fontsextra contains 'ifsym.sty'
DEPEND="${CDEPEND}
	virtual/pkgconfig
	doc? (
		virtual/latex-base
		dev-texlive/texlive-latexextra
		dev-texlive/texlive-fontsextra
	)"

DOCS=( authors.txt bugs.txt changes.txt credits.txt readme.txt )

S=${WORKDIR}/${MY_P}

SITEFILE=50coccinelle-gentoo.el

pkg_setup() {
	python-single-r1_pkg_setup
}

src_prepare() {
	default
	eautoreconf

	# fix python install location
	sed -e "s:\$(LIBDIR)/python:$(python_get_sitedir):" \
		-i Makefile || die

	export VERBOSE=yes

	cp "${FILESDIR}/SCORE_expected.sexp" tests/ || die
}

src_configure() {
	econf \
		--enable-python \
		--enable-ocaml \
		$(use_enable pcre) \
		$(use_enable pcre pcre-syntax) \
		$(use_enable ocamlopt opt)
}

src_compile() {
	if use ocamlopt ; then
		emake all.opt
	else
		emake TARGET_SPATCH=byte-only all-dev
	fi

	if use doc ; then
		VARTEXFONTS="${T}"/fonts emake docs
	fi

	if use emacs ; then
		elisp-compile editors/emacs/cocci.el || die
	fi
}

src_install() {
	default

	use doc && dodoc docs/manual/*.pdf
	newbashcomp scripts/spatch.bash_completion spatch

	if use emacs ; then
		elisp-install ${PN} editors/emacs/*
		elisp-site-file-install "${FILESDIR}"/${SITEFILE}
	fi

	if use vim-syntax ; then
		newdoc editors/vim/README README-vim
		rm editors/vim/README || die
		insinto /usr/share/vim/vimfiles
		doins -r editors/vim/*
	fi

	python_optimize

	export STRIP_MASK='*/coccinelle/spatch'
}

pkg_postinst() {
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}
