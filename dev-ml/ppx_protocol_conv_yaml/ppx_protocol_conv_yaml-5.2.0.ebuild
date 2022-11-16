# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P="ppx_protocol_conv-${PV}"
DESCRIPTION="Pluggable serialization of ocaml data strucures based on type_conv"
HOMEPAGE="https://github.com/andersfugmann/ppx_protocol_conv"
SRC_URI="https://github.com/andersfugmann/ppx_protocol_conv/archive/${PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/${MY_P}"
