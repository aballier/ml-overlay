# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Overlay over bigarrays of chars"
HOMEPAGE="https://github.com/c-cube/ocaml-bigstring/"
SRC_URI="https://github.com/c-cube/ocaml-bigstring/archive/${PV}.tar.gz -> ocaml-bigstring-${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="dev-ml/bigstring:="
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocaml-bigstring-${PV}"
PATCHES=( "${FILESDIR}/oc408.patch" )
