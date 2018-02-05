# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="An OCaml API documentation tool"
HOMEPAGE="https://github.com/ocaml-doc/odoc"
SRC_URI="https://github.com/ocaml-doc/odoc/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

RDEPEND="
	dev-ml/doc-ock:=
	dev-ml/doc-ock-html:=
	dev-ml/doc-ock-xml:=
	dev-ml/tyxml:=
	dev-ml/bos:=
	dev-ml/fpath:=
	dev-ml/result:=
	dev-ml/xmlm:=
	dev-ml/cmdliner:=
"
DEPEND="${RDEPEND}
	dev-ml/findlib"
