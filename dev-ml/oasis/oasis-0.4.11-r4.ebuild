# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OASIS_BUILD_TESTS=1
OASIS_BUILD_DOCS=1

inherit oasis

DESCRIPTION="Tool to integrate a configure, build and install system in OCaml project"
HOMEPAGE="https://github.com/ocaml/oasis http://oasis.forge.ocamlcore.org/index.php"
SRC_URI="https://github.com/ocaml/oasis/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND="dev-ml/ocamlbuild:=[ocamlopt]"
DEPEND="${RDEPEND}
	>=dev-ml/findlib-1.3.1
	dev-ml/ocamlify
	dev-ml/ocamlmod
	!<sci-chemistry/oasis-4.0-r3
	test? (
		>=dev-ml/fileutils-0.4.2
		>=dev-ml/ounit2-2.0.0
		>=dev-ml/ocaml-expect-0.0.4
		dev-ml/pcre
		dev-ml/extlib
	)"

STRIP_MASK="*/bin/*"
DOCS=( "README.md" "TODO.txt" "AUTHORS.md" "CHANGES.txt" )
PATCHES=( "${FILESDIR}/ounit2.patch" )
