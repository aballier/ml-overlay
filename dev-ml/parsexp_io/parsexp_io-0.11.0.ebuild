# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="S-expression parsing library (IO functions)"
HOMEPAGE="https://github.com/janestreet/parsexp_io"
SRC_URI="https://github.com/janestreet/parsexp_io/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

RDEPEND="
	dev-ml/base:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/parsexp:=
	dev-ml/ppx_js_style:=
	dev-ml/ppxlib:=
	dev-ml/stdio:=
"
DEPEND="${RDEPEND}"
