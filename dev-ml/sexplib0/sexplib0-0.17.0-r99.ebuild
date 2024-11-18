# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Library for automated conversion of OCaml-values to and from S-expressions"
HOMEPAGE="https://github.com/janestreet/sexplib0"
SRC_URI="https://github.com/janestreet/sexplib0/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}-1"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
PATCHES=(
	"${FILESDIR}/upd.patch"
)
