# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Helper library for gathering system configuration"
HOMEPAGE="https://github.com/janestreet/configurator"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc"
IUSE=""

DEPEND="
	dev-ml/base:=
	dev-ml/stdio:=
	"
RDEPEND="${DEPEND}"
