# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit jbuilder

MY_PV=release$(ver_rs 1- '')
DESCRIPTION="Cryptographic primitives library for Objective Caml"
HOMEPAGE="https://github.com/xavierleroy/cryptokit"
SRC_URI="https://github.com/xavierleroy/cryptokit/archive/${MY_PV}.tar.gz -> ${P}.tar.gz"
LICENSE="LGPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="zlib"

DEPEND="
	zlib? ( >=sys-libs/zlib-1.1:0= )
	dev-libs/gmp:0=
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-${MY_PV}"

src_configure() {
	./configure \
		$(use_enable zlib) \
		|| die
}

src_compile() {
	dune build || die
	jbuilder_src_compile
}

pkg_postinst() {
	elog ""
	elog "This library uses the /dev/random device to generate "
	elog "random data and RSA keys.  The device should either be"
	elog "built into the kernel or provided as a module. An"
	elog "alternative is to use the Entropy Gathering Daemon"
	elog "(http://egd.sourceforge.net).  Please note that the"
	elog "remainder of the library will still work even in the"
	elog "absence of a one of these sources of randomness."
	elog ""
}

src_test() {
	echo ""
	einfo "You must have either /dev/random or the Entropy Gathering"
	einfo "Daemon (EGD) for this test to succeed!"
	echo ""

	jbuilder_src_test
}
