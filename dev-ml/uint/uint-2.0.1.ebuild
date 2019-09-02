# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Unsigned ints for OCaml"
HOMEPAGE="https://github.com/andrenth/ocaml-uint"
SRC_URI="https://github.com/andrenth/ocaml-uint/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-ml/stdint:="
RDEPEND="${DEPEND}"
S="${WORKDIR}/ocaml-${P}"
