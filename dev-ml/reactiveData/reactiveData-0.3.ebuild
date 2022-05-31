# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Functional reactive programming with incremental changes in data structures"
HOMEPAGE="https://github.com/ocsigen/reactiveData"

if [ "${PV#9999}" != "${PV}" ] ; then
	inherit git-r3
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/ocsigen/reactiveData"
	KEYWORDS=""
else
	SRC_URI="https://github.com/ocsigen/reactiveData/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="LGPL-3-with-linking-exception"
SLOT="0/${PV}"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
