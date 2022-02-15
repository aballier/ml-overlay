# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A binding for SHA interface code in OCaml"
HOMEPAGE="https://github.com/vincenthz/ocaml-sha"
SRC_URI="https://github.com/djs55/ocaml-sha/releases/download/${PV}/${P}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="!dev-ml/ocaml-sha"
DEPEND="${RDEPEND}"
