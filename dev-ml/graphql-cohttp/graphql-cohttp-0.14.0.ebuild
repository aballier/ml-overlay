# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Build GraphQL schemas with Async support"
HOMEPAGE="https://github.com/andreas/ocaml-graphql-server"
SRC_URI="https://github.com/andreas/ocaml-graphql-server/archive/${PV}.tar.gz -> ocaml-graphql-server-${PV}.tar.gz"
LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocaml-graphql-server-${PV}"
PATCHES=(
	"${FILESDIR}/cohttp.patch"
)
