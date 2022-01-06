# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Very lightweight HTTP server using Lwt or Async"
HOMEPAGE="https://github.com/mirage/ocaml-cohttp"
SRC_URI="https://github.com/mirage/ocaml-cohttp/archive/v${PV}.tar.gz -> ocaml-cohttp-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-libs/openssl:0="
DEPEND="${RDEPEND}"

S="${WORKDIR}/ocaml-cohttp-${PV}"

src_prepare() {
	jbuilder_src_prepare
	sed -e 's/oUnit/ounit2/' -i */*/dune || die
}
