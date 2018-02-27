# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Parser combinators built for speed and memory efficiency"
HOMEPAGE="https://github.com/inhabitedtype/angstrom"
SRC_URI="https://github.com/inhabitedtype/angstrom/archive/${PV}.tar.gz -> angstrom-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-lang/ocaml:=
	dev-ml/angstrom:=
	dev-ml/async:=
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/angstrom-${PV}"
