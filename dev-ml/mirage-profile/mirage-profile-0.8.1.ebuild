# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="Collect profiling information"
HOMEPAGE="https://github.com/mirage/mirage-profile https://mirage.io"
SRC_URI="https://github.com/mirage/mirage-profile/archive/${PV}.tar.gz -> mirage-profile-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	>=dev-lang/ocaml-4:=
	dev-ml/cstruct:=
	dev-ml/lwt:=
	dev-ml/ocplib-endian:=
"
DEPEND="
	dev-ml/ppx_cstruct
	${RDEPEND}
"

S="${WORKDIR}/mirage-profile-${PV}"

# Done in -unix
RESTRICT="test"
