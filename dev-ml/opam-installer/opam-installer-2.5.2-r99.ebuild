# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# We are opam
OPAM_INSTALLER_DEP=" "
OPAM_SKIP_VALIDATION=yes

inherit opam

MY_PV="${PV/_/-}"

DESCRIPTION="Core installer for opam packages"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/releases/download/${MY_PV}/opam-full-${MY_PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""
RESTRICT="network-sandbox"

DEPEND="
	!<dev-ml/opam-2.0.0_beta
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/opam-full-${MY_PV}"
OPAM_INSTALLER="${S}/opam-installer"

src_configure() {
	econf --with-vendored-deps
}

src_compile() {
	sed -e 's/DUNE = .*$/DUNE = /' -i Makefile.config
	emake lib-ext
	emake -j1 opam-installer
}
