# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="XML printer and parser for Doc-Ock "
HOMEPAGE="https://github.com/ocaml-doc/doc-ock-xml"
SRC_URI="https://github.com/ocaml-doc/doc-ock-xml/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

RDEPEND="dev-ml/doc-ock:=
	dev-ml/menhir:=
	dev-ml/xmlm:="
DEPEND="${RDEPEND}
	dev-ml/findlib
"
