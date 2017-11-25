# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# We are opam
OPAM_INSTALLER_DEP=" "

inherit opam

DESCRIPTION="Core installer for opam packages"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/archive/${PV/_beta/-beta}.tar.gz -> opam-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/opam-format:=
	dev-ml/cmdliner:=
	!dev-ml/opam
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/opam-${PV/_beta/-beta}"
OPAM_INSTALLER="${S}/opam-installer"

src_compile() {
	# https://github.com/janestreet/jbuilder/issues/257
	touch src/tools/.merlin-exists
	emake opam-installer
	emake ${PN}.install
}
