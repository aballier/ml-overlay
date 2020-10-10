# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="An image manipulation library for ocaml"
HOMEPAGE="http://gallium.inria.fr/camlimages/ https://gitlab.com/camlspotter/camlimages"
SRC_URI="https://gitlab.com/camlspotter/camlimages/-/archive/${PV}/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	media-libs/libexif
	media-libs/giflib
	dev-ml/lablgtk
	virtual/jpeg
	media-libs/tiff
	>=media-libs/libpng-1.4:0=
	app-text/ghostscript-gpl
	media-libs/freetype:2=
	x11-libs/libXpm
	x11-apps/rgb
	sys-libs/zlib
"
DEPEND="${DEPEND}
	virtual/pkgconfig
	dev-ml/findlib"
