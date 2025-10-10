# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="opam client libraries"
HOMEPAGE="https://opam.ocaml.org/ https://github.com/ocaml/opam"
SRC_URI="https://github.com/ocaml/opam/archive/${PV/_/-}.tar.gz -> opam-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE=""

RDEPEND="!<dev-ml/opam-2.0.0_beta
	<dev-ml/cmdliner-2"
DEPEND="${RDEPEND}"

S="${WORKDIR}/opam-${PV/_/-}"

src_configure() {
	econf --disable-checks
}
