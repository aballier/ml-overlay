# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="Cooperative light-weight thread library for OCaml"
SRC_URI="https://github.com/ocsigen/lwt/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="http://ocsigen.org/lwt"

IUSE="+libev"

DEPEND="
	>=dev-lang/ocaml-4.02:=
	dev-ml/result:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/ppx_tools_versioned:=
	libev? ( dev-libs/libev )"

RDEPEND="${DEPEND}
	!<www-servers/ocsigen-1.1"
DEPEND="${DEPEND}
	dev-ml/cppo
	dev-ml/findlib"

SLOT="0/${PV}"
LICENSE="LGPL-2.1-with-linking-exception"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86 ~x86-fbsd"

src_configure() {
	ocaml src/util/configure.ml \
		-use-libev $(usex libev true false) \
		|| die
}
