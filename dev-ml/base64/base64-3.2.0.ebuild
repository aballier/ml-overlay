# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit jbuilder

DESCRIPTION="Library for radix-64 representation (de)coding"
HOMEPAGE="https://github.com/mirage/ocaml-base64"
SRC_URI="https://github.com/mirage/ocaml-base64/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="!dev-ml/ocaml-base64"
DEPEND="${RDEPEND}
	test? ( dev-ml/rresult dev-ml/bos dev-ml/alcotest )
"

S="${WORKDIR}/ocaml-${P}"
