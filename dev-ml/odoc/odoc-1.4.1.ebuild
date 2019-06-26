# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="An OCaml API documentation tool"
HOMEPAGE="https://github.com/ocaml/odoc"
SRC_URI="https://github.com/ocaml/odoc/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

RDEPEND="
	dev-ml/astring:=
	dev-ml/bos:=
	dev-ml/cmdliner:=
	dev-ml/fpath:=
	dev-ml/result:=
	dev-ml/tyxml:=
"
DEPEND="${RDEPEND}
	dev-ml/cppo
	dev-ml/findlib
	test? (
		dev-ml/alcotest
		dev-ml/lambdasoup
		dev-ml/markup
		dev-ml/sexplib
	)"
