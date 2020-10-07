# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A compiler from OCaml bytecode to javascript"
HOMEPAGE="http://ocsigen.org/js_of_ocaml/"

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/js_of_ocaml"
	KEYWORDS="~arm64"
else
	SRC_URI="https://github.com/ocsigen/js_of_ocaml/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~arm ~arm64 ~x86"
fi

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
IUSE="test"

RDEPEND="
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppx_tools_versioned:=
	dev-ml/uchar:=
	dev-ml/js_of_ocaml-compiler:=
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ppx_expect dev-ml/js_of_ocaml-ppx_deriving_json )
"
