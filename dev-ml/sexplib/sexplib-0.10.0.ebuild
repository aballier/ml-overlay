# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Library for automated conversion of OCaml-values to and from S-expressions"
HOMEPAGE="https://github.com/janestreet/sexplib"
SRC_URI="https://github.com/janestreet/sexplib/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc"
IUSE=""

RDEPEND="|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )"
DEPEND="${RDEPEND}"
