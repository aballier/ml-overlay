# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Syntax for RPCs for Eliom and Ocsigen Start"
HOMEPAGE="https://github.com/ocsigen/ocsigen-ppx-rpc/"
SRC_URI="https://github.com/ocsigen/ocsigen-ppx-rpc/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
