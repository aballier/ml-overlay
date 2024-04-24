# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Read and write pcap-formatted network packet traces."
HOMEPAGE="https://github.com/mirage/ocaml-pcap https://mirage.io"
SRC_URI="https://github.com/mirage/ocaml-pcap/releases/download/v${PV}/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}"
