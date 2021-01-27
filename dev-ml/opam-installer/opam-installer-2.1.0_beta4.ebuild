# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# We are opam
OPAM_INSTALLER_DEP=" "
OPAM_SKIP_VALIDATION=yes

inherit opam

MY_PV="${PV/_/-}"
CPPOV=1.6.7
EXTLIBV=1.7.8

DESCRIPTION="Core installer for opam packages"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/releases/download/${MY_PV}/opam-full-${MY_PV}.tar.gz
	https://github.com/ocaml-community/cppo/releases/download/v${CPPOV}/cppo-v${CPPOV}.tbz
	https://github.com/ygrek/ocaml-extlib/releases/download/${EXTLIBV}/extlib-${EXTLIBV}.tar.gz
"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
IUSE=""

DEPEND="
	!<dev-ml/opam-2.0.0_beta
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/opam-full-${MY_PV}"
OPAM_INSTALLER="${S}/opam-installer"

PATCHES=(
	"${FILESDIR}/cppo.patch"
	"${FILESDIR}/extlib.patch"
)

src_compile() {
	cp "${DISTDIR}/cppo-v${CPPOV}.tbz" src_ext/archives/ || die
	cp "${DISTDIR}/extlib-${EXTLIBV}.tar.gz" src_ext/archives/ || die
	sed -e 's/DUNE = .*$/DUNE = /' -i Makefile.config
	emake lib-ext
	emake -j1 opam-installer
}
