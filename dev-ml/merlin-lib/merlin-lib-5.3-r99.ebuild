# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

OCV=502

DESCRIPTION="Context sensitive completion for OCaml in Vim and Emacs"
HOMEPAGE="https://github.com/ocaml/merlin"
SRC_URI="https://github.com/ocaml/merlin/releases/download/v${PV}-${OCV/-/_}/merlin-${PV}-${OCV/-/.}.tbz"

LICENSE="MIT"
SLOT="0/${PV}-${OCV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S="${WORKDIR}/merlin-${PV}-${OCV/-/\~}"
PATCHES=( "${FILESDIR}/oc53.patch" )
