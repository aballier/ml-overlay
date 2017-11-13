# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit oasis eutils

DESCRIPTION="The community-maintained foundation library for your OCaml projects"
HOMEPAGE="https://github.com/ocaml-batteries-team/batteries-included/"
SRC_URI="https://github.com/ocaml-batteries-team/batteries-included/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="dev-ml/camomile:=
	dev-ml/num:="
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit dev-ml/iTeML )"

DOCS=( "ChangeLog" "FAQ" "README.folders" "README.md" )

S="${WORKDIR}/${PN}-included-${PV}"

PATCHES=(
	"${FILESDIR}/lex.patch"
	"${FILESDIR}/bigint.patch"
	"${FILESDIR}/buffer.patch"
	"${FILESDIR}/buffer2.patch"
	"${FILESDIR}/digest.patch"
	"${FILESDIR}/format.patch"
	"${FILESDIR}/genlex.patch"
	"${FILESDIR}/int32.patch"
	"${FILESDIR}/marshal.patch"
	"${FILESDIR}/pervasives.patch"
	"${FILESDIR}/printf.patch"
	"${FILESDIR}/string.patch"
	"${FILESDIR}/stringcap.patch"
	"${FILESDIR}/unix.patch"
	"${FILESDIR}/base64.patch"
	"${FILESDIR}/bitset.patch"
	"${FILESDIR}/substring.patch"
	"${FILESDIR}/text.patch"
)
