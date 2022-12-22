# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="opam solver"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/archive/${PV/_/-}.tar.gz -> opam-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/opam-client )"

S="${WORKDIR}/opam-${PV/_/-}"

src_prepare() {
	sed -e 's/Algo/Dose_algo/g' \
		-e 's/Common/Dose_common/g' \
		-i src/solver/*.{ml,mli,ml.real} || die
	jbuilder_src_prepare
}
