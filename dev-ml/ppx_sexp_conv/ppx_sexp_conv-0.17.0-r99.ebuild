# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Support Library for type-driven code generators"
HOMEPAGE="https://github.com/janestreet/ppx_sexp_conv"
SRC_URI="https://github.com/janestreet/ppx_sexp_conv/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}-1"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
PATCHES=(
	"${FILESDIR}/upd.patch"
	"${FILESDIR}/upd2.patch"
)
