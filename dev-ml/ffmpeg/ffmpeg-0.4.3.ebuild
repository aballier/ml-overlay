# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit findlib

DESCRIPTION="Bindings for the ffmpeg library"
HOMEPAGE="https://github.com/savonet/ocaml-ffmpeg"
SRC_URI="https://github.com/savonet/ocaml-ffmpeg/releases/download/v${PV}/ocaml-${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-lang/ocaml:=
	media-video/ffmpeg:0=
"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"
S="${WORKDIR}/ocaml-${P}"

src_configure() {
	# econf messes with tools prefixes
	./configure || die
}

src_install() {
	findlib_src_install
}
