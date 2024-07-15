# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Hexadecimal encoding and decoding"
HOMEPAGE="https://git.robur.coop/robur/ohex"
SRC_URI="https://github.com/ocaml/opam-source-archives/raw/main/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""
S="${WORKDIR}/${PN}"
