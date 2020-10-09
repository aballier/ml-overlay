# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="An OCaml API documentation tool"
HOMEPAGE="https://github.com/ocaml/odoc"
SRC_URI="https://github.com/ocaml/odoc/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-ml/cppo
	dev-ml/findlib
	test? (
		dev-ml/alcotest
		dev-ml/lambdasoup
		dev-ml/markup
		dev-ml/sexplib
	)"
