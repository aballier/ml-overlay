# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Numpy npy file format reading/writing"
HOMEPAGE="https://github.com/LaurentMazare/npy-ocaml"
SRC_URI="https://github.com/LaurentMazare/npy-ocaml/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${PN}-ocaml-${PV}"
