# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# We are opam
OPAM_INSTALLER_DEP=" "

inherit opam

DESCRIPTION="Core libraries for opam"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/archive/${PV/_/-}.tar.gz -> opam-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

RDEPEND="
	dev-ml/ocamlgraph:=
	dev-ml/re:=
	dev-ml/opam-file-format:=
	dev-ml/cmdliner:=
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/opam-${PV/_/-}"
OPAM_INSTALLER="${S}/opam-installer"

src_compile() {
	emake opam-installer
	emake ${PN}.install
}
