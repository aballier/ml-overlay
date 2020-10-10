# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Logs asynchronous logger & reporter for Async"
HOMEPAGE="https://github.com/vbmithr/logs-async"
SRC_URI="https://github.com/vbmithr/logs-async/releases/download/${PV}/logs-async-${PV}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

S="${WORKDIR}/logs-async-${PV}"
