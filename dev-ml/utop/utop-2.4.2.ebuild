# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A new toplevel for OCaml with completion and colorization"
HOMEPAGE="https://github.com/diml/utop"
SRC_URI="https://github.com/diml/utop/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

RDEPEND="
	>=dev-ml/lwt-2.4.0:=
		dev-ml/result:=
	dev-ml/lwt_react:=
	>=dev-ml/lambda-term-2:=
	>=dev-ml/findlib-1.7.2:=
	dev-ml/camomile:=
	dev-ml/react:=
	dev-ml/dune:=
"
DEPEND="${RDEPEND}
	>=dev-ml/cppo-1.0.1
"
