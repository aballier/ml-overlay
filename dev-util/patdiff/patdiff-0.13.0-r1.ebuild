# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Colored patience diffs with word-level refinement"
HOMEPAGE="https://github.com/janestreet/patdiff"
SRC_URI="https://github.com/janestreet/patdiff/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/core:=
	dev-ml/patience_diff:=
	dev-ml/ppx_jane:=
		dev-ml/ocaml-migrate-parsetree:=
		dev-ml/ppxlib:=
	dev-ml/sexplib:=
	dev-ml/pcre:=
	dev-ml/re:=
"
DEPEND="${RDEPEND}"
