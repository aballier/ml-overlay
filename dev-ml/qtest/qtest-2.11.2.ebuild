# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Inline (Unit) Tests for OCaml"
HOMEPAGE="https://github.com/vincent-hugot/qtest"
SRC_URI="https://github.com/vincent-hugot/qtest/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}-ounit2"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND="!dev-ml/iTeML"
DEPEND="${RDEPEND}"
