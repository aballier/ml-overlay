# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Thin bindings to various low-level system APIs"
HOMEPAGE="http://ygrek.org.ua/p/ocaml-extunix/ https://github.com/ygrek/extunix"
SRC_URI="https://github.com/ygrek/extunix/releases/download/v${PV}/${P}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
