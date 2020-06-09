# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

DESCRIPTION="System-independent part of Core"
HOMEPAGE="https://github.com/janestreet/core_kernel"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-ml/base:=
	dev-ml/base_bigstring:=
	dev-ml/base_quickcheck:=
		dev-ml/ppxlib:=
			dev-ml/ocaml-migrate-parsetree:=
			dev-ml/result:=
	dev-ml/bin_prot:=
	dev-ml/fieldslib:=
	dev-ml/jane-street-headers:=
	dev-ml/jst-config:=
	dev-ml/ppx_assert:=
	dev-ml/ppx_base:=
	dev-ml/ppx_hash:=
	dev-ml/ppx_inline_test:=
	dev-ml/ppx_jane:=
		dev-ml/ppx_expect:=
			dev-ml/re:=
	dev-ml/ppx_sexp_conv:=
	dev-ml/ppx_sexp_message:=
	dev-ml/sexplib:=
		dev-ml/parsexp:=
			dev-ml/base:=
		dev-ml/sexplib0:=
		dev-ml/num:=
	dev-ml/splittable_random:=
	dev-ml/stdio:=
	dev-ml/time_now:=
	dev-ml/typerep:=
	dev-ml/variantslib:=
"
DEPEND="${RDEPEND}"
