# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_PV="${PV/_/+}"
MY_P="ocaml-${PN}-${MY_PV}"
DESCRIPTION="A modular standard library focused on data structures"
HOMEPAGE="https://github.com/c-cube/ocaml-containers"
SRC_URI="https://github.com/c-cube/ocaml-containers/archive/v${PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="!dev-ml/ocaml-containers"
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocaml-${PN}-${PV/_/-}"
