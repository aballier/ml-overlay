# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Redis bindings for OCaml"
HOMEPAGE="http://0xffea.github.io/ocaml-redis/ https://github.com/0xffea/ocaml-redis/"
SRC_URI="https://github.com/0xffea/ocaml-redis/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/re:=
	dev-ml/uuidm:=
	!dev-ml/ocaml-redis
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit2 dev-db/redis dev-ml/lwt )"
S="${WORKDIR}/ocaml-${P}"
PATCHES=( "${FILESDIR}/ounit2.patch" )

src_test() {
	einfo "Starting test redis server"
	local port=4567
	/usr/sbin/redis-server --port ${port} &
	local rpid=$!
	export OCAML_REDIS_TEST_PORT=${port}
	sleep 1
	DUNE_PROFILE=release dune runtest -p "${PN}" || { kill ${rpid}; die; }
	kill ${rpid} || die
}
