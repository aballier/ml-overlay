# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit user findlib opam

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/ocsigenserver"
	KEYWORDS=""
else
	SRC_URI="https://github.com/ocsigen/ocsigenserver/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="Ocaml-powered webserver and framework for dynamic web programming"
HOMEPAGE="http://www.ocsigen.org"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}-lwt4"
IUSE="debug doc dbm +sqlite postgres"
REQUIRED_USE="|| ( sqlite dbm postgres )"
RESTRICT="strip installsources"
OPAM_FILE="opam"

DEPEND="
		postgres? ( dev-ml/pgocaml:=[camlp4(+)] )
		dbm? ( dev-ml/camldbm:= )
		sqlite? ( dev-ml/sqlite3:= )"
RDEPEND="${DEPEND}"

pkg_setup() {
	enewgroup ocsigenserver
	enewuser ocsigenserver -1 -1 /var/www ocsigenserver
}

src_configure() {
	sh configure \
		--prefix "${EPREFIX}/usr" \
		--temproot "${ED}" \
		--docdir "${EPREFIX}/usr/share/doc/${PF}" \
		--mandir "${EPREFIX}/usr/share/man/man1" \
		--libdir "$(ocamlfind printconf destdir)" \
		$(use_enable debug) \
		$(use_enable debug annot) \
		$(use_with sqlite) \
		$(use_with dbm) \
		$(use_with postgres pgsql) \
		--ocsigen-group ocsigenserver \
		--ocsigen-user ocsigenserver  \
		--name ocsigenserver \
		|| die "Error : configure failed!"
}

src_compile() {
	emake
	use doc && emake doc
}

src_install() {
	findlib_src_preinst
	emake install
	if use doc ; then
		emake install.doc
	fi
	emake logrotate

	newinitd "${FILESDIR}"/ocsigenserver.initd ocsigenserver || die
	newconfd "${FILESDIR}"/ocsigenserver.confd ocsigenserver || die

	dodoc README.md

	# We create it at runtime
	rm -f "${ED}/var/run/ocsigenserver_command" || die
}
