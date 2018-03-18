# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Core-flavoured wrapper around zarith's arbitrary-precision rationals"
HOMEPAGE="https://github.com/janestreet/bignum"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/core_kernel:=
	dev-ml/ppx_jane:=
	dev-ml/typerep:=
	dev-ml/num:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppxlib:=
	dev-ml/zarith:=
"
DEPEND="${RDEPEND}"
