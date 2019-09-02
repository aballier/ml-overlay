# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A Protocol Buffers codec generator for OCaml"
HOMEPAGE="https://github.com/whitequark/ppx_deriving_protobuf"
SRC_URI="https://github.com/whitequark/ppx_deriving_protobuf/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/ppx_deriving:=
"
DEPEND="${RDEPEND}
	dev-ml/ppxfind
	dev-ml/ppx_tools
	dev-ml/cppo
	test? ( dev-ml/ounit dev-ml/uint )
"
