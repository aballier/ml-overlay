# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vcs-snapshot jbuilder

DESCRIPTION="An image manipulation library for ocaml"
HOMEPAGE="http://gallium.inria.fr/camlimages/"
SRC_URI="https://bitbucket.org/camlspotter/camlimages/get/${PV}.tar.bz2 -> ${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"
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
