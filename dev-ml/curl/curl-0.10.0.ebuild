# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="OCaml interface to the libcurl library"
HOMEPAGE="http://forge.ocamlcore.org/projects/ocurl/ https://github.com/ygrek/ocurl"
LICENSE="MIT"
SRC_URI="https://github.com/ygrek/ocurl/archive/${PV}.tar.gz -> ocurl-${PV}.tar.gz"

SLOT="0/${PV}"
IUSE="examples"

RDEPEND=">=net-misc/curl-7.9.8"
DEPEND="${RDEPEND}
	virtual/pkgconfig"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~x86"
S="${WORKDIR}/ocurl-${PV}"
