# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Partially Ordered Map ADT for O'Caml"
HOMEPAGE="http://mmottl.github.io/pomap/"
SRC_URI="https://github.com/mmottl/pomap/releases/download/${PV}/${P}.tbz"
LICENSE="LGPL-2.1-with-linking-exception"

SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND=""
DEPEND="${RDEPEND}"
