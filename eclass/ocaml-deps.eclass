# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: ocaml-deps.eclass
# @MAINTAINER:
# Alexis Ballier <aballier@gentoo.org>
# @AUTHOR:
# Alexis Ballier <aballier@gentoo.org>
# @BLURB: Global dependencies definitions for ocaml
# @DESCRIPTION:

# Keep it sorted
declare -A -r -g _GLOBAL_OCAML_DEPS=(
	[ANSITerminal]=""
	[alcotest]="fmt astring cmdliner uuidm stdlib-shims"
	[alcotest-async]="alcotest async_unix core_kernel"
	[astring]=""
	[async]="async_kernel async_rpc_kernel async_unix core core_kernel ppx_jane textutils"
	[async_kernel]="core_kernel ppx_jane"
	[async_unix]="async_kernel core core_kernel ppx_jane"
	[async_ssl]="async base core ppx_jane stdio ctypes dune-configurator"
	[base]="sexplib0 dune-configurator"
	[base_bigstring]="base ppx_jane"
	[base_quickcheck]="base ppx_base ppx_fields_conv ppx_let ppx_sexp_message ppx_sexp_value splittable_random ppxlib"
	[cmdliner]="result findlib"
	[core_kernel]="base base_bigstring base_quickcheck bin_prot fieldslib jane-street-headers jst-config ppx_assert
				ppx_base ppx_hash ppx_inline_test ppx_jane ppx_sexp_conv ppx_sexp_message sexplib splittable_random stdio time_now
				typerep variantslib"
	[csexp]="result"
	[dune-configurator]="dune-private-libs csexp"
	[dune-private-libs]=""
	[fieldslib]="base"
	[findlib]=""
	[fmt]="result seq stdlib-shims uchar cmdliner"
	[ocaml-compiler-libs]=""
	[ocaml-migrate-parsetree]="result ppx_derivers"
	[octavius]=""
	[ppx_base]="ppx_cold ppx_compare ppx_enumerate ppx_hash ppx_js_style ppx_sexp_conv ppxlib"
	[ppx_cold]="base ppxlib"
	[ppx_compare]="base ppxlib"
	[ppx_derivers]=""
	[ppx_enumerate]="base ppxlib"
	[ppx_fields_conv]="base fieldslib ppxlib"
	[ppx_hash]="base ppx_compare ppx_sexp_conv ppxlib"
	[ppx_here]="base ppxlib"
	[ppx_inline_test]="base time_now ppxlib"
	[ppx_jane]="base_quickcheck ppx_assert ppx_base ppx_bench ppx_bin_prot ppx_custom_printf ppx_expect ppx_fields_conv
				ppx_fixed_literal ppx_here ppx_inline_test ppx_let ppx_module_timer ppx_optcomp ppx_optional ppx_pipebang
				ppx_sexp_message ppx_sexp_value ppx_stable ppx_string ppx_typerep_conv ppx_variants_conv ppxlib"
	[ppx_js_style]="base octavius ppxlib"
	[ppx_let]="base ppxlib"
	[ppx_optcomp]="base stdio ppxlib"
	[ppx_typerep_conv]="base typerep ppxlib"
	[ppx_sexp_conv]="base sexplib0 ppxlib"
	[ppx_sexp_message]="base ppx_here ppx_sexp_conv ppxlib"
	[ppx_sexp_value]="base ppx_here ppx_sexp_conv ppxlib"
	[ppx_string]="base ppx_base stdio ppxlib"
	[ppx_variants_conv]="base variantslib ppxlib"
	[ppxlib]="ocaml-compiler-libs ocaml-migrate-parsetree ppx_derivers sexplib0 stdlib-shims"
	[result]=""
	[seq]=""
	[sexplib0]=""
	[splittable_random]="base ppx_assert ppx_bench ppx_inline_test ppx_sexp_message"
	[stdio]="base"
	[stdlib-shims]=""
	[time_now]="base jane-street-headers jst-config ppx_base ppx_optcomp"
	[typerep]="base"
	[uchar]=""
	[uuidm]="cmdliner"
	[variantslib]="base"
)

_ocaml_gen_tr_deps() {
	for d ; do
		printf "dev-ml/${d}:=\n"
		if [[ -v _GLOBAL_OCAML_DEPS[$d] ]]; then
			_ocaml_gen_tr_deps ${_GLOBAL_OCAML_DEPS[$d]}
		else
			eqawarn "$d (transitive dep) not handled by ocaml-deps.eclass"
		fi
	done
}

ocaml_gen_deps() {
	if [[ -v _GLOBAL_OCAML_DEPS[$1] ]]; then
		_ocaml_gen_tr_deps ${_GLOBAL_OCAML_DEPS[$1]}
	else
		die "${1} not handled by ocaml-deps.eclass"
	fi
}
