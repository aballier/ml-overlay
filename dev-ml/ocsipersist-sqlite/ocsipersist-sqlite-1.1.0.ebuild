# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Persistent key/value storage"
HOMEPAGE="https://github.com/ocsigen/ocsipersist"
SRC_URI="https://github.com/ocsigen/ocsipersist/archive/refs/tags/${PV}.tar.gz -> ocsipersist-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
S="${WORKDIR}/ocsipersist-${PV}"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
