# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="WTF-8 encoder and decoder"
SRC_URI="https://github.com/flowtype/ocaml-wtf8/releases/download/v${PV}/${PN}-v${PV}.tbz"
HOMEPAGE="https://github.com/flowtype/ocaml-wtf8"

SLOT="0/${PV}"
LICENSE="MIT"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
S="${WORKDIR}/${PN}-v${PV}"
