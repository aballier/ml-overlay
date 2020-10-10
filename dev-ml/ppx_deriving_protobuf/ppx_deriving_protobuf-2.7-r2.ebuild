# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="A Protocol Buffers codec generator for OCaml"
HOMEPAGE="https://github.com/whitequark/ppx_deriving_protobuf"
SRC_URI="https://github.com/whitequark/ppx_deriving_protobuf/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-ml/ppxfind
	dev-ml/ppx_tools
	dev-ml/cppo
	test? ( dev-ml/ounit2 dev-ml/uint )
"
PATCHES=( "${FILESDIR}/ounit2.patch" "${FILESDIR}/oc411.patch" )
