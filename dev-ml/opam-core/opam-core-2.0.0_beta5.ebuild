# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# We are opam
OPAM_INSTALLER_DEP=""

inherit opam

DESCRIPTION="Core libraries for opam"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/archive/${PV/_beta/-beta}.tar.gz -> opam-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/ocamlgraph:=
	dev-ml/ocaml-re:=
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/opam-${PV/_beta/-beta}"
OPAM_INSTALLER="${S}/opam-installer"

src_compile() {
	emake opam-installer
	emake ${PN}.install
}
