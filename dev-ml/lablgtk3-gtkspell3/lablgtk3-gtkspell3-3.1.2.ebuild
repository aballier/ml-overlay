# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_PV=${PV/_beta/.beta}
DESCRIPTION="OCaml bindings to GTK-3"
HOMEPAGE="https://github.com/garrigue/lablgtk"
SRC_URI="https://github.com/garrigue/lablgtk/archive/refs/tags/${PV}.tar.gz -> lablgtk3-${MY_PV}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-text/gtkspell:3="
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/lablgtk3-${MY_PV}"
