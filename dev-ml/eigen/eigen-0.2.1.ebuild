# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OCaml interface to Eigen3"
HOMEPAGE="https://github.com/owlbarn/eigen"
SRC_URI="https://github.com/owlbarn/eigen/releases/download/${PV}/${P}.tbz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-cpp/eigen:3"
RDEPEND=""
BDEPEND=""
