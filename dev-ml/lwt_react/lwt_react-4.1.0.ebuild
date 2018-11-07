# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="GLib integration for Lwt"
SRC_URI="https://github.com/ocsigen/lwt/archive/${PV}.tar.gz -> lwt-${PV}.tar.gz"
HOMEPAGE="http://ocsigen.org/lwt"

IUSE=""

DEPEND="
	>=dev-ml/lwt-${PV}:=
		dev-ml/result:=
	>=dev-ml/react-1.2:=
"

RDEPEND="${DEPEND}"

SLOT="0/${PV}"
LICENSE="LGPL-2.1-with-linking-exception"
KEYWORDS="~amd64 ~arm ~arm64 ~x86 ~x86-fbsd"
S="${WORKDIR}/lwt-${PV}"
