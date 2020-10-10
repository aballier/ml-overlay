# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Meta Language Toolchain"
HOMEPAGE="https://github.com/facebook/reason"
SRC_URI="https://registry.npmjs.org/@esy-ocaml/reason/-/${P}.tgz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="+ocamlopt"

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/findlib
"
S=( "${WORKDIR}/package" )

src_prepare() {
	cp src/reason-parser/ocaml_util.ml-4.{10,11} || die
	eapply "${FILESDIR}/oc411.patch"
	default
}
