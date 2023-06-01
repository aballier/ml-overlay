# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Ppx extension for deriving a witness that a type is intended to be stable"
HOMEPAGE="https://github.com/janestreet/ppx_stable_witness"
SRC_URI="https://github.com/janestreet/ppx_stable_witness/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
