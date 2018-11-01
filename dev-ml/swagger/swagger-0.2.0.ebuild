# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Swagger 2.0 code generator for OCaml"
HOMEPAGE="https://github.com/andrenth/ocaml-swagger"
SRC_URI="https://github.com/andrenth/ocaml-swagger/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/atdgen:=
	dev-ml/re:=
	dev-ml/yojson:=
"
RDEPEND="${DEPEND}"
S="${WORKDIR}/ocaml-${P}"
