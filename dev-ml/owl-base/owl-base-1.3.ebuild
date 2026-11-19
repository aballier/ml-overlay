# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OCaml Scientific and Engineering Computing"
HOMEPAGE="https://github.com/owlbarn/owl"
SRC_URI="https://github.com/owlbarn/owl/releases/download/${PV}/owl-${PV}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/owl-${PV}"
