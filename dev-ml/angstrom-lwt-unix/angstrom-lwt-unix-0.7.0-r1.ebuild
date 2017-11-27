# Copyright 1999-2017 Gentoo Foundation
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
	dev-ml/angstrom:=
	dev-ml/lwt:=
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/angstrom-${PV}"

src_prepare() {
	has_version '>=dev-lang/ocaml-4.06_beta' && eapply "${FILESDIR}/ocaml406.patch"
	default
}
