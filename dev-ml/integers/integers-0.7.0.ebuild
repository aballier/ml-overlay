# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Various signed and unsigned integer types for OCaml"
HOMEPAGE="https://github.com/ocamllabs/ocaml-integers"
SRC_URI="https://github.com/ocamllabs/ocaml-integers/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocaml-${P}"
