# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="Path-based dispatching for client- and server-side applications"
HOMEPAGE="https://github.com/inhabitedtype/ocaml-dispatch"
SRC_URI="https://github.com/inhabitedtype/ocaml-dispatch/archive/${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

DEPEND="
	dev-ml/result:=
	!dev-ml/ocaml-dispatch
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/ounit )
"
S="${WORKDIR}/ocaml-${P}"
