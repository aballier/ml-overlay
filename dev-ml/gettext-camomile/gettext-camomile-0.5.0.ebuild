# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Provides support for internationalization of OCaml program"
HOMEPAGE="https://github.com/gildor478/ocaml-gettext"
SRC_URI="https://github.com/gildor478/ocaml-gettext/releases/download/v${PV}/gettext-${PV}.tbz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="sys-devel/gettext"
DEPEND="${RDEPEND}"
S="${WORKDIR}/gettext-${PV}"
