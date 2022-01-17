# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A syntax extension for importing declarations from interface files"
HOMEPAGE="https://github.com/ocaml-ppx/ppx_import"
SRC_URI="https://github.com/ocaml-ppx/ppx_import/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}oc408"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=(
	"${FILESDIR}/ounit2.patch"
)
