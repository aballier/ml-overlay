# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

MY_PV="${PV/_/-}"
DESCRIPTION="Library to exploit multicore architectures for OCaml programs"
HOMEPAGE="http://www.dicosmo.org/code/parmap/"
SRC_URI="https://github.com/rdicosmo/parmap/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/${PN}-${MY_PV/+/-}"
