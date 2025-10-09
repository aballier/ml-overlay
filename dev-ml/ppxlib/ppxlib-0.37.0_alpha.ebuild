# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Base library and tools for ppx rewriters "
HOMEPAGE="https://github.com/ocaml-ppx/ppxlib"
#SRC_URI="https://github.com/ocaml-ppx/ppxlib/archive/${PV}.tar.gz -> ${P}.tar.gz"
PHASH=757f6c284b1fe748d5027eef3bbef924b6bbd7ce
SRC_URI="https://github.com/ocaml-ppx/ppxlib/archive/${PHASH}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/${PN}-${PHASH}"
