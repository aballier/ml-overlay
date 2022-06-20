# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P="ppx_protocol_conv-${PV}"
DESCRIPTION="Pluggable serialization and deserialization of ocaml data strucures based on type_conv"
HOMEPAGE="https://github.com/andersfugmann/ppx_protocol_conv"
SRC_URI="https://github.com/andersfugmann/ppx_protocol_conv/archive/${PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/${MY_P}"
PATCHES=( "${FILESDIR}/yojson.patch" )
