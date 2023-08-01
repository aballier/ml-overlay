# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

DESCRIPTION="Library for binding to C libraries using pure OCaml"
HOMEPAGE="https://github.com/ocamllabs/ocaml-ctypes"
SRC_URI="https://github.com/ocamllabs/ocaml-ctypes/archive/${PV}.tar.gz -> ocaml-ctypes-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~arm ~arm64"
IUSE="test"

RDEPEND="dev-libs/libffi:="
DEPEND="${RDEPEND}
	test? ( sys-libs/ncurses )
"
RDEPEND="${RDEPEND}
	!dev-ml/ocaml-ctypes"
S="${WORKDIR}/ocaml-ctypes-${PV}"
