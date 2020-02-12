# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Lwt-based helpers for Alcotest"
HOMEPAGE="https://github.com/mirage/alcotest/"
SRC_URI="https://github.com/mirage/alcotest/archive/${PV}.tar.gz -> alcotest-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="
	dev-ml/alcotest:=
	dev-ml/logs:=
	dev-ml/lwt:=
"
DEPEND="${RDEPEND}"
S=${WORKDIR}/alcotest-${PV}
