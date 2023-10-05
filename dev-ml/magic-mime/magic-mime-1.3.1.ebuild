# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Convert file extensions to MIME types"
HOMEPAGE="https://github.com/mirage/ocaml-magic-mime"
SRC_URI="https://github.com/mirage/ocaml-magic-mime/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"
LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="!dev-ml/ocaml-magic-mime"
DEPEND="${RDEPEND}"
S="${WORKDIR}/ocaml-${P}"
