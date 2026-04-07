# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit findlib opam

DESCRIPTION="Eliom Base Application with users, (pre)registration, notifications, etc."
HOMEPAGE="https://github.com/ocsigen/ocsigen-start"

LICENSE="LGPL-3"
SLOT="0/${PV}"
IUSE=""

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/ocsigen-start"
else
	SRC_URI="https://github.com/ocsigen/ocsigen-start/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

RDEPEND=""
DEPEND="${RDEPEND}"
OPAM_FILE=opam

src_install() {
	findlib_src_preinst
	DESTDIR="${ED}" OCAMLPATH="${OCAMLFIND_DESTDIR}" emake install
	dodoc README.md
}
