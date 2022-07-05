# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OCaml library for manipulation of IP (and MAC) address representations"
HOMEPAGE="https://github.com/mirage/ocaml-ipaddr"
SRC_URI="https://github.com/mirage/ocaml-ipaddr/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="!dev-ml/ocaml-ipaddr"
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocaml-${P}"
