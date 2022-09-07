# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_PV=${PV/_/-}
MY_P=ocaml-ffmpeg-${MY_PV}
DESCRIPTION="Bindings for the ffmpeg library"
HOMEPAGE="https://github.com/savonet/ocaml-ffmpeg"
SRC_URI="https://github.com/savonet/ocaml-ffmpeg/archive/refs/tags/v${MY_PV}.tar.gz -> ${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}-ffmpeg5"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="media-video/ffmpeg:0="
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"
S="${WORKDIR}/${MY_P}"
