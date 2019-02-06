# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P="ocaml-hiredis-${PV}"

DESCRIPTION="Hiredis bindings for OCaml"
HOMEPAGE="https://github.com/zshipko/ocaml-hiredis"
SRC_URI="https://github.com/zshipko/ocaml-hiredis/archive/v${PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${MY_P}"
