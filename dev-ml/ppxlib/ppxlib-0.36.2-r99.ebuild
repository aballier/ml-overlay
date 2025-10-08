# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Base library and tools for ppx rewriters "
HOMEPAGE="https://github.com/ocaml-ppx/ppxlib"
SRC_URI="https://github.com/ocaml-ppx/ppxlib/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=( "${FILESDIR}/oc54.patch" )
