# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Expose Stdlib.Bigarray when possible but try not to break stuff"
HOMEPAGE="https://github.com/mirage/bigarray-compat"
SRC_URI="https://github.com/mirage/bigarray-compat/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
