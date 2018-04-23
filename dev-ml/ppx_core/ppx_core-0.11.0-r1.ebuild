# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Standard library for ppx rewriters"
HOMEPAGE="https://github.com/janestreet/ppx_core"
SRC_URI="https://github.com/janestreet/ppx_core/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

DEPEND="
	dev-ml/ppxlib:=
		dev-ml/ocaml-migrate-parsetree:=
"
RDEPEND="${DEPEND}"
