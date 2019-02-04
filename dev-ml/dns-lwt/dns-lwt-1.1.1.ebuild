# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

MY_P=ocaml-dns-${PV}

DESCRIPTION="Lwt support of OCaml DNS"
HOMEPAGE="https://github.com/mirage/ocaml-dns https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-dns/archive/v${PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="LGPL-2 LGPL-2.1-with-linking-exception ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/lwt:=
	dev-ml/dns:=
		dev-ml/ipaddr:=
	dev-ml/mirage-profile:=
"
DEPEND="
	test? (
		dev-ml/dns-lwt-unix
	)
	${RDEPEND}
"
# do not work
RESTRICT="test"

S="${WORKDIR}/${MY_P}"
