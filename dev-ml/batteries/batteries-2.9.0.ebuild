# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit oasis eutils

DESCRIPTION="The community-maintained foundation library for your OCaml projects"
HOMEPAGE="https://github.com/ocaml-batteries-team/batteries-included/"
SRC_URI="https://github.com/ocaml-batteries-team/batteries-included/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE="test"

RDEPEND="dev-ml/camomile:=
	dev-ml/num:="
DEPEND="${RDEPEND}
	test? ( dev-ml/qcheck dev-ml/qtest )"

DOCS=( "ChangeLog" "FAQ" "README.folders" "README.md" )

S="${WORKDIR}/${PN}-included-${PV}"

PATCHES=(
	"${FILESDIR}/0012-Gc-add-new-4.08-fields.patch"
	"${FILESDIR}/0013-Array-reorder-type-and-include-to-avoid-error.patch"
	"${FILESDIR}/0014-re-export-Bigarray.-.map_file-functions-removed-in-4.patch"
	"${FILESDIR}/0015-Int32-incorrect-primitive-names.patch"
	"${FILESDIR}/0016-Lexing-no-support-for-disabling-position-tracking.patch"
	"${FILESDIR}/0017-Unix-we-don-t-support-the-new-link-follow-parameter-.patch"
	"${FILESDIR}/0028-BatArray-4.07-compat.patch"
	"${FILESDIR}/0031-BatInt32-4.08-compat.patch"
	"${FILESDIR}/0032-BatInt64-4.08-compat.patch"
	"${FILESDIR}/0033-BatLexing-4.08-compat.patch"
	"${FILESDIR}/0040-BatUnix-4.08-compat.patch"
)
