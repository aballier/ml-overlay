# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit user findlib jbuilder

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/ocsigenserver"
	KEYWORDS=""
else
	SRC_URI="https://github.com/ocsigen/ocsigenserver/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="Ocaml-powered webserver and framework for dynamic web programming"
HOMEPAGE="http://www.ocsigen.org"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
IUSE="dbm +sqlite postgres"
REQUIRED_USE="|| ( sqlite dbm postgres )"
RESTRICT="strip installsources"

DEPEND="
		postgres? ( dev-ml/pgocaml:=[camlp4(+)] )
		dbm? ( dev-ml/camldbm:= )
		sqlite? ( dev-ml/sqlite3:= )"
RDEPEND="${DEPEND}"

pkg_setup() {
	enewgroup ocsigenserver
	enewuser ocsigenserver -1 -1 /var/www ocsigenserver
}

src_prepare() {
	mv src/http src/ocsihttp || die
	sed -e 's/http/ocsihttp/' -i src/Makefile || die
	eapply "${FILESDIR}/cohttp.patch"
	jbuilder_src_prepare
}

src_configure() {
	sh configure \
		--prefix "${EPREFIX}/usr" \
		--temproot "${ED}" \
		--docdir "${EPREFIX}/usr/share/doc/${PF}" \
		--mandir "${EPREFIX}/usr/share/man/man1" \
		--libdir "$(ocamlfind printconf destdir)" \
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
	jbuilder_src_compile
}

src_install() {
	jbuilder_src_install
	emake logrotate

	newinitd "${FILESDIR}"/ocsigenserver.initd ocsigenserver || die
	newconfd "${FILESDIR}"/ocsigenserver.confd ocsigenserver || die

	dodoc README.md

	# We create it at runtime
	rm -f "${ED}/var/run/ocsigenserver_command" || die
}
