# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Common layer for the JSX and PPX syntaxes for Tyxml"
HOMEPAGE="http://ocsigen.org/tyxml/"
SRC_URI="https://github.com/ocsigen/tyxml/archive/${PV}.tar.gz -> tyxml-${PV}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/tyxml-${PV}"
