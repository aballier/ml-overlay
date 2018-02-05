# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Documentation generation for OCaml"
HOMEPAGE="https://github.com/ocaml-doc/doc-ock"
SRC_URI="https://github.com/ocaml-doc/doc-ock/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

RDEPEND="dev-ml/octavius:="
DEPEND="${RDEPEND}
	dev-ml/cppo
	dev-ml/findlib
"
