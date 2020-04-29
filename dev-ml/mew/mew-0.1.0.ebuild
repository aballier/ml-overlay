# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="Modal Editing Witch"
HOMEPAGE="https://github.com/kandu/mew"
SRC_URI="https://github.com/kandu/mew/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""

DEPEND="
	dev-ml/trie:=
	dev-ml/result:=
"
RDEPEND="${DEPEND}"
BDEPEND=""
