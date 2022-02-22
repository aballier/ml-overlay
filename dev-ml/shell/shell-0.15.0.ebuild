# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Yet another implementation of fork&exec and related functionality "
HOMEPAGE="https://github.com/janestreet/shell"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="!dev-ml/ocamlnet"
RDEPEND="${DEPEND}"
