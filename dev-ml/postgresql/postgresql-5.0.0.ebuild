# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A package for ocaml that provides access to PostgreSQL databases"
SRC_URI="https://github.com/mmottl/postgresql-ocaml/releases/download/${PV}/${P}.tbz -> ocaml-${P}.tbz"
HOMEPAGE="http://mmottl.github.io/postgresql-ocaml/"
IUSE=""

RDEPEND="
	dev-db/postgresql:=[server]
"
DEPEND="${RDEPEND}"
BDEPEND=">=dev-ml/findlib-1.5"

SLOT="0/${PV}"
LICENSE="LGPL-2"
KEYWORDS="~amd64 ~x86"
