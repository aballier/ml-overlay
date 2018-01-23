# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

MY_PV="${PV/_/+}"
MY_P="ocaml-${PN}-${MY_PV}"
DESCRIPTION="A modular standard library focused on data structures"
HOMEPAGE="https://github.com/c-cube/ocaml-containers"
SRC_URI="https://github.com/c-cube/ocaml-containers/archive/${MY_PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/result:=
	!dev-ml/ocaml-containers
"
DEPEND="${RDEPEND} dev-ml/cppo
	test? ( dev-ml/iTeML dev-ml/ounit dev-ml/gen )"

S="${WORKDIR}/ocaml-${PN}-${PV/_/-}"
