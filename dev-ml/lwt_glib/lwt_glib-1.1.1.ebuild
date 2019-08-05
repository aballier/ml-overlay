# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="GLib/GTK event loop for Lwt"
SRC_URI="https://github.com/ocsigen/lwt_glib/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="http://ocsigen.org/lwt"

IUSE=""

DEPEND="
	dev-ml/lwt:=
		dev-ml/result:=
	dev-libs/glib:2=
"

SLOT="0/${PV}"
LICENSE="LGPL-2.1-with-linking-exception"
KEYWORDS="~amd64 ~arm ~arm64 ~x86 ~x86-fbsd"
