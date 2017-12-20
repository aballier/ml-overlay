# Copyright 1999-2017 Gentoo Foundation
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
	dev-ml/core_kernel:=
	dev-ml/ppx_driver:=
	dev-ml/ppx_jane:=
	dev-ml/typerep:=
	dev-ml/zarith:=
	<dev-ml/ppx_driver-100
	<dev-ml/ppx_jane-100
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )
"
DEPEND="${RDEPEND}"
