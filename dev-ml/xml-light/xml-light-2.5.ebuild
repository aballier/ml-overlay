# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Minimal Xml parser and printer for OCaml"
HOMEPAGE="https://github.com/ncannasse/xml-light http://tech.motion-twin.com/xmllight.html"
SRC_URI="https://github.com/ncannasse/xml-light/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
