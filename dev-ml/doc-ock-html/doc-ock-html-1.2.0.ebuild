# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="From doc-ock to html"
HOMEPAGE="https://github.com/ocaml-doc/doc-ock-html"
SRC_URI="https://github.com/ocaml-doc/doc-ock-html/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND="dev-ml/doc-ock:=
	dev-ml/tyxml:=
	dev-ml/xmlm:="
DEPEND="${RDEPEND}
	dev-ml/cppo
	dev-ml/findlib
"
