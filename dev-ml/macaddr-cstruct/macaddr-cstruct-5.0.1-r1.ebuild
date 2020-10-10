# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="OCaml library for manipulation of MAC address representations"
HOMEPAGE="https://github.com/mirage/ocaml-ipaddr"
SRC_URI="https://github.com/mirage/ocaml-ipaddr/archive/v${PV}.tar.gz -> ocaml-ipaddr-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="!dev-ml/ocaml-ipaddr"
DEPEND="${RDEPEND}"

S="${WORKDIR}/ocaml-ipaddr-${PV}"
