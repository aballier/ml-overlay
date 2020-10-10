# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="RFC 1035 Internet domain names"
HOMEPAGE="https://github.com/hannesm/domain-name"
SRC_URI="https://github.com/hannesm/domain-name/releases/download/v${PV}/${PN}-v${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
	test? ( dev-ml/alcotest )
"
BDEPEND=""
S="${WORKDIR}/${PN}-v${PV}"
