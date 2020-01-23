# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit findlib

DESCRIPTION="Eliom Base Application with users, (pre)registration, notifications, etc."
HOMEPAGE="https://github.com/ocsigen/ocsigen-start"

LICENSE="LGPL-3"
SLOT="0/${PV}"
IUSE=""

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/ocsigen-start"
	KEYWORDS=""
else
	SRC_URI="https://github.com/ocsigen/ocsigen-start/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

RDEPEND="dev-lang/ocaml:=
	dev-ml/pgocaml:=
	dev-ml/macaque:=
	dev-ml/safepass:=
	dev-ml/ocsigen-i18n:=
	>=dev-ml/eliom-6.3:=
		www-servers/ocsigenserver:=
	dev-ml/ocsigen-toolkit:=
	dev-ml/js_of_ocaml:=
	dev-ml/js_of_ocaml-camlp4:=
	dev-ml/resource-pooling:=
	dev-ml/yojson:=
	dev-ml/cohttp-lwt-unix:=
		dev-ml/lwt:=
	dev-ml/ocamlnet:=
	dev-ml/lwt_camlp4:=
"
DEPEND="${RDEPEND}"

src_install() {
	findlib_src_preinst
	DESTDIR="${ED}" OCAMLPATH="${OCAMLFIND_DESTDIR}" emake install
	dodoc README.md
}
