# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Redis bindings for OCaml via Lwt"
HOMEPAGE="http://0xffea.github.io/ocaml-redis/ https://github.com/0xffea/ocaml-redis/"
SRC_URI="https://github.com/0xffea/ocaml-redis/archive/${PV}.tar.gz -> ocaml-redis-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/redis:=
	dev-ml/lwt:=
	!dev-ml/ocaml-redis-lwt
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit )"

S=${WORKDIR}/ocaml-redis-${PV}
PATCHES=( "${FILESDIR}/ocaml406.patch" )
