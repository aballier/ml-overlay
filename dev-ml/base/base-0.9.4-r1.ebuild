# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Standard library for OCaml"
HOMEPAGE="https://github.com/janestreet/base"
SRC_URI="https://github.com/janestreet/base/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc"
IUSE=""

RDEPEND="
	dev-lang/ocaml:=
	dev-ml/sexplib:=
	<dev-ml/sexplib-100
"
DEPEND="${RDEPEND}"
