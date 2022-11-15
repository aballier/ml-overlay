# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A REST toolkit for OCaml"
HOMEPAGE="https://github.com/inhabitedtype/ocaml-webmachine"
SRC_URI="https://github.com/inhabitedtype/ocaml-webmachine/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/ocaml-${P}"
PATCHES=( "${FILESDIR}/ounit2.patch" )
