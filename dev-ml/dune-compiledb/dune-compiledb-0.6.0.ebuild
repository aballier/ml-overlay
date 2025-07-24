# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Generate compile_commands.json"
HOMEPAGE="https://github.com/edwintorok/dune-compiledb"
SRC_URI="https://github.com/edwintorok/dune-compiledb/releases/download/${PV}/${P}.tbz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
