# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Redis bindings for OCaml"
HOMEPAGE="http://0xffea.github.io/ocaml-redis/ https://github.com/0xffea/ocaml-redis/"
SRC_URI="https://github.com/0xffea/ocaml-redis/archive/refs/tags/v${PV}.tar.gz -> ocaml-redis-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocaml-redis-${PV}"

shutdown_redis() {
	redis-cli -s "${1}" shutdown || die
}

src_test() {
	einfo "Starting test redis server"
	local socket="${T}/redis.sock"
	local conf="${T}/redis.conf"
	cat > "${conf}" << EOF
unixsocket ${socket}
unixsocketperm 775
daemonize yes
port 63791
EOF
	/usr/sbin/redis-server "${conf}"

	export OCAML_REDIS_TEST_SOCKET="${socket}"
	sleep 1
	DUNE_PROFILE=release dune runtest -p "${PN}" || { shutdown_redis "${socket}" ; die ; }
	shutdown_redis "${socket}"
}
