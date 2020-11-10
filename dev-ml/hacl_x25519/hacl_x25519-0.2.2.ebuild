# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P=${PN}-v${PV}
DESCRIPTION="Primitives for Elliptic Curve Cryptography"
HOMEPAGE="https://github.com/mirage/hacl"
SRC_URI="https://github.com/mirage/hacl/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${MY_P}"
