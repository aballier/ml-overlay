# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="OpenSSL binding with concurrent I/O"
SRC_URI="https://github.com/aantron/lwt_ssl/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/aantron/lwt_ssl"

IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

SLOT="0/${PV}"
LICENSE="LGPL-2.1-with-linking-exception"
KEYWORDS="~amd64 ~arm"
