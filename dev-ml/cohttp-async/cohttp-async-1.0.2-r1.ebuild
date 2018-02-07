# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit jbuilder

DESCRIPTION="Very lightweight HTTP server using Lwt or Async"
HOMEPAGE="https://github.com/mirage/ocaml-cohttp"
SRC_URI="https://github.com/mirage/ocaml-cohttp/archive/v${PV}.tar.gz -> ocaml-cohttp-${PV}.tar.gz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/cohttp:=
	dev-ml/conduit-async:=
	dev-ml/magic-mime:=
	dev-ml/logs:=
		dev-ml/result:=
	dev-ml/fmt:=
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )
"
DEPEND="${RDEPEND}
	test? ( dev-ml/ounit )"

S="${WORKDIR}/ocaml-cohttp-${PV}"
