# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Swagger 2.0 code generator for OCaml"
HOMEPAGE="https://github.com/andrenth/ocaml-swagger"
SRC_URI="https://github.com/andrenth/ocaml-swagger/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/ocaml-${P}"
PATCHES=( "${FILESDIR}/atd.patch" "${FILESDIR}/yojson.patch" )
