# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Auto-formatter for OCaml code"
HOMEPAGE="https://github.com/ocaml-ppx/ocamlformat"
SRC_URI="https://github.com/ocaml-ppx/ocamlformat/releases/download/${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/base:=
	dev-ml/bisect_ppx:=
	dev-ml/cmdliner:=
	dev-ml/fix:=
	dev-ml/fpath:=
	dev-ml/ocaml-migrate-parsetree:=
	dev-ml/odoc:=
	dev-ml/re:=
	dev-ml/stdio:=
	dev-ml/uuseg:=
	dev-ml/uutf:=
"
RDEPEND="${DEPEND}"
BDEPEND=""
DEPEND="${DEPEND}
	test? ( dev-ml/ocp-indent )"

S="${WORKDIR}/ocamlformat-${PV}"
