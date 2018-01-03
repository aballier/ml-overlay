# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="A binding for SHA interface code in OCaml"
HOMEPAGE="https://github.com/vincenthz/ocaml-sha"
SRC_URI="https://github.com/vincenthz/ocaml-sha/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="!dev-ml/ocaml-sha"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit )"
S="${WORKDIR}/ocaml-${P}"
