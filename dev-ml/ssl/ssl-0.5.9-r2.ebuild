# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="OCaml bindings for OpenSSL"
SRC_URI="https://github.com/savonet/ocaml-ssl/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"
HOMEPAGE="https://github.com/savonet/ocaml-ssl"

DEPEND="dev-libs/openssl:0="
RDEPEND="${DEPEND}
	!dev-ml/ocaml-ssl"

SLOT="0/${PV}"
LICENSE="LGPL-2.1"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""
S="${WORKDIR}/ocaml-${P}"
