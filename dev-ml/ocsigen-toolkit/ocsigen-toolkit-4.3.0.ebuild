# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="User interface widgets for Ocsigen applications"
HOMEPAGE="https://github.com/ocsigen/ocsigen-toolkit"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
IUSE=""

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/ocsigen-toolkit"
else
	SRC_URI="https://github.com/ocsigen/ocsigen-toolkit/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

RDEPEND=""
DEPEND="${RDEPEND}"
