# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Bigstring intrinsics and fast blits based on memcpy/memmove "
HOMEPAGE="https://github.com/inhabitedtype/bigstringaf"
SRC_URI="https://github.com/inhabitedtype/bigstringaf/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${RDEPEND}"
