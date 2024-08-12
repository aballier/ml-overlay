# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Detect root CA certificates from the operating system"
HOMEPAGE="https://github.com/mirage/ca-certs"
SRC_URI="https://github.com/mirage/ca-certs/releases/download/v${PV}/${P}.tbz"

LICENSE="BSD-2"
SLOT="0/${PV}-nocstruct"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
PATCHES=(
	"${FILESDIR}/astring.patch"
	"${FILESDIR}/fmt.patch"
	"${FILESDIR}/astring2.patch"
	"${FILESDIR}/cstruct.patch"
)
