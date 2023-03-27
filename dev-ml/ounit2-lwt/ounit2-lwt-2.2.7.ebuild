# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Unit testing framework for OCaml"
HOMEPAGE="https://github.com/gildor478/ounit"
SRC_URI="https://github.com/gildor478/ounit/releases/download/v${PV}/ounit-${PV}.tbz"
LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
IUSE=""

S="${WORKDIR}/ounit-${PV}"
