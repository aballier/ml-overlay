# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1
OASIS_BUILD_TESTS=1

inherit oasis eutils

DESCRIPTION="Ocaml implementation of expect to help building unitary testing"
HOMEPAGE="https://github.com/gildor478/ocaml-expect"
SRC_URI="https://github.com/gildor478/ocaml-expect/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE="test"

RDEPEND="
	dev-ml/batteries:=
	dev-ml/pcre:="
DEPEND="${RDEPEND}
	dev-ml/oasis
	test? ( >=dev-ml/ounit2-2.0.0 )"

DOCS=( "README.txt" "CHANGES.txt" "AUTHORS.txt" )

src_prepare() {
	sed -e 's/oUnit/ounit2/' -i _oasis || die
	default
}
