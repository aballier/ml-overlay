# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Syntax for cross-language type definitions"
HOMEPAGE="https://github.com/ahrefs/atd"
SRC_URI="https://github.com/ahrefs/atd/releases/download/${PV}/atd-${PV}.tbz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/atd:=
		dev-ml/easy-format:=
		dev-ml/menhir:=
		dev-ml/re:=
	dev-ml/atdgen-runtime:=
	dev-ml/biniou:=
	dev-ml/yojson:=
"
RDEPEND="${DEPEND}"
S="${WORKDIR}/atd-${PV}"
