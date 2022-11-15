# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="A library offering facilities for the safe storage of user passwords"
HOMEPAGE="http://ocaml-safepass.forge.ocamlcore.org/ https://github.com/darioteixeira/ocaml-safepass"
SRC_URI="https://github.com/darioteixeira/ocaml-safepass/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
S=${WORKDIR}/ocaml-${P}
