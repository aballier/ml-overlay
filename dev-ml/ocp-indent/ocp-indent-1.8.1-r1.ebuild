# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A simple tool to indent OCaml programs"
HOMEPAGE="https://github.com/OCamlPro/ocp-indent https://www.typerex.org/ocp-indent.html"
SRC_URI="https://github.com/OCamlPro/ocp-indent/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
