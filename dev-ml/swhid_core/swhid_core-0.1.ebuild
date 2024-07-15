# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="OCaml library to work with swhids"
HOMEPAGE="https://github.com/ocamlpro/swhid_core"
SRC_URI="https://github.com/OCamlPro/swhid_core/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
