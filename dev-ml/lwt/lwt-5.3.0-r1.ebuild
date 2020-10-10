# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Cooperative light-weight thread library for OCaml"
SRC_URI="https://github.com/ocsigen/lwt/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="http://ocsigen.org/lwt"

IUSE=""

DEPEND="dev-libs/libev"
RDEPEND="${DEPEND}
	!<www-servers/ocsigen-1.1"
DEPEND="${DEPEND}
	dev-ml/cppo
	dev-ml/findlib"

SLOT="0/${PV}"
LICENSE="LGPL-2.1-with-linking-exception"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
