# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Micro-benchmarking library for OCaml"
HOMEPAGE="https://github.com/janestreet/core_bench"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/core:=
	dev-ml/ppx_jane:=
		dev-ml/ocaml-migrate-parsetree:=
		dev-ml/ppxlib:=
	dev-ml/textutils:=
	dev-ml/re:=
"
DEPEND="${RDEPEND}"
