# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Various signed and unsigned integers for OCaml"
HOMEPAGE="https://github.com/andrenth/ocaml-stdint"
SRC_URI="https://github.com/andrenth/ocaml-stdint/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="!dev-ml/ocaml-stdint"
RDEPEND="${DEPEND}"
S="${WORKDIR}/ocaml-${P}"
