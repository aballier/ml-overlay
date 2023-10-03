# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="An OCaml API documentation tool"
HOMEPAGE="https://github.com/ocaml/odoc"
SRC_URI="https://github.com/ocaml/odoc/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
