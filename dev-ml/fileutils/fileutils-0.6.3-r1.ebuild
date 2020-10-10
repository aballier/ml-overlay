# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Pure OCaml functions to manipulate real file (POSIX like) and filename"
HOMEPAGE="http://forge.ocamlcore.org/projects/ocaml-fileutils https://github.com/gildor478/ocaml-fileutils"
SRC_URI="https://github.com/gildor478/ocaml-fileutils/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"

RDEPEND="!dev-ml/ocaml-fileutils"
DEPEND="${RDEPEND}
	test? ( >=dev-ml/ounit2-2.0.0 )"

S="${WORKDIR}/ocaml-${P}"
PATCHES=( "${FILESDIR}/ounit2.patch" )
