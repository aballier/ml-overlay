# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Standard IO Library for OCaml"
HOMEPAGE="https://github.com/janestreet/stdio"
SRC_URI="https://github.com/janestreet/stdio/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc"
IUSE=""

RDEPEND="
	>=dev-ml/base-0.10.0:=
	>=dev-ml/sexplib-0.10.0:="
DEPEND="${RDEPEND}"
