# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="an implementation of the Light Weight Directory Access Protocol"
HOMEPAGE="https://github.com/kit-ty-kate/ocamldap"
SRC_URI="https://github.com/kit-ty-kate/ocamldap/archive/${PV}.tar.gz -> ocam${P}.tar.gz"
LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocam${P}"
PATCHES=( "${FILESDIR}/oc5.patch" )
