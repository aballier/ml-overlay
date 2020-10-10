# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="A Yojson codec generator for OCaml"
HOMEPAGE="https://github.com/whitequark/ppx_deriving_yojson/"
SRC_URI="https://github.com/whitequark/ppx_deriving_yojson/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/cppo
	dev-ml/ppx_tools
	dev-ml/ppxfind
	test? ( dev-ml/ounit2 )"
PATCHES=( "${FILESDIR}/ounit2.patch" )
