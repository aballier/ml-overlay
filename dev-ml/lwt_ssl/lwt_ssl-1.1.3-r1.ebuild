# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="OpenSSL binding with concurrent I/O"
SRC_URI="https://github.com/aantron/lwt_ssl/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/aantron/lwt_ssl"

IUSE=""

RDEPEND="
	>=dev-ml/lwt-4.2:=
	dev-ml/result:=
	>=dev-ml/ssl-0.4.0:=
"
DEPEND="${RDEPEND}"

SLOT="0/${PV}"
LICENSE="LGPL-2.1-with-linking-exception"
KEYWORDS="~amd64 ~arm ~x86-fbsd"
