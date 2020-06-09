# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Virtual DOM diffing library"
HOMEPAGE="https://github.com/janestreet/virtual_dom"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/base:=
	dev-ml/core_kernel:=
	dev-ml/ppx_jane:=
	dev-ml/js_of_ocaml:=
	dev-ml/js_of_ocaml-ppx:=
	dev-ml/lambdasoup:=
	dev-ml/tyxml:=
"
DEPEND="${RDEPEND}"
