# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Perl Compatibility Regular Expressions for OCaml"
HOMEPAGE="https://github.com/camlp5/pcre2-ocaml"
SRC_URI="https://github.com/camlp5/pcre2-ocaml/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND="dev-libs/libpcre2:="
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${PN}-ocaml-${PV}"
