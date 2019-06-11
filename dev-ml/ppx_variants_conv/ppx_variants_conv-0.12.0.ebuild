# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Generation of accessor and iteration functions for ocaml variant types"
HOMEPAGE="https://github.com/janestreet/ppx_variants_conv"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND="
	dev-ml/base:=
	dev-ml/variantslib:=
	dev-ml/ppxlib:=
		dev-ml/ocaml-migrate-parsetree:=
"
RDEPEND="${DEPEND}"
