# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

SNAPSHOT=04e050cbe2cf3e5cdb4441c480e4f472a5033941

DESCRIPTION="Base library and tools for ppx rewriters "
HOMEPAGE="https://github.com/ocaml-ppx/ppxlib"

if [ -n "${SNAPSHOT}" ]; then
	SRC_URI="https://github.com/ocaml-ppx/ppxlib/archive/${SNAPSHOT}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/${PN}-${SNAPSHOT}"
else
	SRC_URI="https://github.com/ocaml-ppx/ppxlib/archive/${PV}.tar.gz -> ${P}.tar.gz"
fi

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
