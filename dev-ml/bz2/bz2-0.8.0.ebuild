# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="OCaml bindings for libbz (AKA, bzip2)"
HOMEPAGE="https://gitlab.com/irill/camlbz2"
SRC_URI="https://gitlab.com/irill/camlbz2/-/archive/${PV}/camlbz2-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~ppc64 ~x86"
IUSE="doc"

DEPEND="app-arch/bzip2
	!dev-ml/camlbz2"
RDEPEND="${DEPEND}"
S="${WORKDIR}/camlbz2-${PV}"
