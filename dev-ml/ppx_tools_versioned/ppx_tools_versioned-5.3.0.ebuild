# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

MY_PV=${PV/_/}
MY_P=${PN}-${MY_PV}

DESCRIPTION="Tools for authors of ppx rewriters"
HOMEPAGE="https://github.com/let-def/ppx_tools_versioned"
SRC_URI="https://github.com/let-def/ppx_tools_versioned/archive/${MY_PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="
	dev-ml/ocaml-migrate-parsetree:=
		dev-ml/result:=
"
RDEPEND="${DEPEND}"
S="${WORKDIR}/${MY_P}"
