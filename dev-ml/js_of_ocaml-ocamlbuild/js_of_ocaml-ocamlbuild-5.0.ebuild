# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder findlib

DESCRIPTION="A compiler from OCaml bytecode to javascript"
HOMEPAGE="https://github.com/ocsigen/js_of_ocaml-ocamlbuild"

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/js_of_ocaml-ocamlbuild"
	KEYWORDS=""
else
	SRC_URI="https://github.com/ocsigen/js_of_ocaml-ocamlbuild/releases/download/${PV}/${P}.tbz"
	KEYWORDS="~amd64"
fi

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
IUSE=""

RDEPEND="!<dev-ml/js_of_ocaml-3.0.1"
DEPEND="${RDEPEND}"
