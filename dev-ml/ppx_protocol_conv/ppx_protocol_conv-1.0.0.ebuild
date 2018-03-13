# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Pluggable serialization and deserialization of ocaml data strucures based on type_conv"
HOMEPAGE="https://github.com/andersfugmann/ppx_protocol_conv"
SRC_URI="https://github.com/andersfugmann/ppx_protocol_conv/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/yojson:=
	dev-ml/xml-light:=
	dev-ml/msgpck:=
	dev-ml/base:=
	dev-ml/ppx_type_conv:=
	dev-ml/ppx_driver:=
	dev-ml/ppx_metaquot:=
"
RDEPEND="${DEPEND}"
