# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="OCaml bindings for RE2"
HOMEPAGE="https://github.com/janestreet/re2"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/core_kernel:=
	dev-ml/ppx_driver:=
	dev-ml/ppx_jane:=
		dev-ml/ppx_expect:=
	dev-ml/ocaml-migrate-parsetree:=
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )
"
RDEPEND="${DEPEND}"
