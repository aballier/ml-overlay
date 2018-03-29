# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

UPSTREAM_COMMIT="4538bf643bf23d47b4e29ded305a28e3c28bf3eb"
DESCRIPTION="OCaml interface to the YAML 1.1 spec"
HOMEPAGE="https://github.com/avsm/ocaml-yaml"
#SRC_URI="https://github.com/avsm/ocaml-yaml/releases/download/v${PV}/${P}.tbz"
SRC_URI="https://github.com/avsm/ocaml-yaml/archive/${UPSTREAM_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/ocaml-ctypes:=
	dev-ml/rresult:=
	dev-ml/fmt:=
	dev-ml/logs:=
	dev-ml/sexplib:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	dev-ml/ppx_sexp_conv
	test? (
		dev-ml/alcotest
		dev-ml/ezjsonm
		dev-ml/bos
	)
"
S="${WORKDIR}/ocaml-yaml-${UPSTREAM_COMMIT}"
