# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Generates a Java interface from type definitions"
HOMEPAGE="https://github.com/mjambon/atd"
SRC_URI="https://github.com/mjambon/atd/archive/${PV}.tar.gz -> atd-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/atd:=
"
RDEPEND="${DEPEND}"
S="${WORKDIR}/atd-${PV}"
