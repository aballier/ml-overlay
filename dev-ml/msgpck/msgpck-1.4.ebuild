# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Fast msgpack library for OCaml "
HOMEPAGE="https://github.com/vbmithr/ocaml-msgpck"
SRC_URI="https://github.com/vbmithr/ocaml-msgpck/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="dev-ml/ocplib-endian:="
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/alcotest )"
S="${WORKDIR}/ocaml-${P}"
