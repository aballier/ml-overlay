# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="Build GraphQL schemas with Lwt support"
HOMEPAGE="https://github.com/andreas/ocaml-graphql-server"
SRC_URI="https://github.com/andreas/ocaml-graphql-server/archive/${PV}.tar.gz -> ocaml-graphql-server-${PV}.tar.gz"
LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/alcotest )"
S="${WORKDIR}/ocaml-graphql-server-${PV}"
