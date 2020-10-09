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
	[angstrom]="result bigstringaf"
	[angstrom-async]="angstrom async"
	[angstrom-lwt-unix]="angstrom lwt"
	[angstrom-unix]="angstrom"
	[astring]=""
	[async]="async_kernel async_rpc_kernel async_unix core core_kernel ppx_jane textutils"
	[async_extra]="async_kernel core_kernel ppx_jane"
	[async_kernel]="core_kernel ppx_jane"
	[async_unix]="async_kernel core core_kernel ppx_jane"
	[async_rpc_kernel]="async_kernel core_kernel protocol_version_header ppx_jane"
	[async_ssl]="async base core ppx_jane stdio ocaml-ctypes dune-configurator"
	[base]="sexplib0 dune-configurator"
	[base64]="dune-configurator"
	[base_bigstring]="base ppx_jane"
	[base_quickcheck]="base ppx_base ppx_fields_conv ppx_let ppx_sexp_message ppx_sexp_value splittable_random ppxlib"
	[bigarray-compat]=""
	[bigstringaf]="bigarray-compat"
	[bin_prot]="base ppx_compare ppx_custom_printf ppx_fields_conv ppx_sexp_conv ppx_variants_conv ppx_optcomp"
	[camomile]=""
	[cmdliner]="result findlib"
	[cohttp]="re uri uri-sexp fieldslib sexplib0 ppx_fields_conv stringext base64 stdlib-shims ppx_sexp_conv"
	[cohttp-async]="async ppx_sexp_conv stdlib-shims uri-sexp async_kernel async_unix base cohttp conduit-async magic-mime logs fmt sexplib0 uri"
	[cohttp-lwt]="cohttp lwt sexplib0 ppx_sexp_conv logs"
	[conduit]="ppx_sexp_conv sexplib astring uri logs ipaddr ipaddr-sexp"
	[conduit-async]="core ppx_sexp_conv sexplib conduit ipaddr async"
	[core]="core_kernel jst-config ppx_jane sexplib timezone spawn"
	[core_kernel]="base base_bigstring base_quickcheck bin_prot fieldslib jane-street-headers jst-config ppx_assert
ppx_base ppx_hash ppx_inline_test ppx_jane ppx_sexp_conv ppx_sexp_message sexplib splittable_random stdio time_now
typerep variantslib"
	[csexp]="result"
	[domain-name]="fmt astring"
	[dune-configurator]="dune-private-libs csexp"
	[dune-private-libs]=""
	[fieldslib]="base"
	[findlib]=""
	[fmt]="result seq stdlib-shims uchar cmdliner"
	[integers]=""
	[ipaddr]="stdlib-shims macaddr domain-name"
	[ipaddr-sexp]="ipaddr ppx_sexp_conv"
	[jane-street-headers]=""
	[jst-config]="base ppx_assert stdio dune-configurator"
	[logs]="result"
	[lwt]="seq result mmap ocplib-endian dune-configurator"
	[macaddr]=""
	[macaddr-sexp]="macaddr ppx_sexp_conv"
	[magic-mime]=""
	[mmap]=""
	[num]=""
	[ocaml-compiler-libs]=""
	[ocaml-ctypes]="integers"
	[ocaml-migrate-parsetree]="result ppx_derivers"
	[ocplib-endian]=""
	[octavius]=""
	[parsexp]="sexplib0 base"
	[ppx_assert]="base ppx_cold ppx_compare ppx_here ppx_sexp_conv ppxlib"
	[ppx_base]="ppx_cold ppx_compare ppx_enumerate ppx_hash ppx_js_style ppx_sexp_conv ppxlib"
	[ppx_bench]="ppx_inline_test ppxlib"
	[ppx_bin_prot]="base bin_prot ppx_here ppxlib"
	[ppx_cold]="base ppxlib"
	[ppx_compare]="base ppxlib"
	[ppx_custom_printf]="base ppx_sexp_conv ppxlib"
	[ppx_derivers]=""
	[ppx_enumerate]="base ppxlib"
	[ppx_expect]="base ppx_here ppx_inline_test ppxlib re stdio"
	[ppx_fields_conv]="base fieldslib ppxlib"
	[ppx_fixed_literal]="base ppxlib"
	[ppx_hash]="base ppx_compare ppx_sexp_conv ppxlib"
	[ppx_here]="base ppxlib"
	[ppx_inline_test]="base time_now ppxlib"
	[ppx_jane]="base_quickcheck ppx_assert ppx_base ppx_bench ppx_bin_prot ppx_custom_printf ppx_expect ppx_fields_conv
ppx_fixed_literal ppx_here ppx_inline_test ppx_let ppx_module_timer ppx_optcomp ppx_optional ppx_pipebang
ppx_sexp_message ppx_sexp_value ppx_stable ppx_string ppx_typerep_conv ppx_variants_conv ppxlib"
	[ppx_js_style]="base octavius ppxlib"
	[ppx_let]="base ppxlib"
	[ppx_module_timer]="base ppx_base stdio time_now ppxlib"
	[ppx_optcomp]="base stdio ppxlib"
	[ppx_optional]="base ppxlib"
	[ppx_pipebang]="ppxlib"
	[ppx_tools_versioned]="ocaml-migrate-parsetree"
	[ppx_typerep_conv]="base typerep ppxlib"
	[ppx_sexp_conv]="base sexplib0 ppxlib"
	[ppx_sexp_message]="base ppx_here ppx_sexp_conv ppxlib"
	[ppx_sexp_value]="base ppx_here ppx_sexp_conv ppxlib"
	[ppx_stable]="base ppxlib"
	[ppx_string]="base ppx_base stdio ppxlib"
	[ppx_variants_conv]="base variantslib ppxlib"
	[ppxlib]="ocaml-compiler-libs ocaml-migrate-parsetree ppx_derivers sexplib0 stdlib-shims"
	[protocol_version_header]="core_kernel ppx_jane"
	[re]="seq"
	[result]=""
	[seq]=""
	[sexplib]="parsexp sexplib0 num"
	[sexplib0]=""
	[spawn]=""
	[splittable_random]="base ppx_assert ppx_bench ppx_inline_test ppx_sexp_message"
	[stdio]="base"
	[stdlib-shims]=""
	[stringext]=""
	[textutils]="core ppx_jane core_kernel"
	[time_now]="base jane-street-headers jst-config ppx_base ppx_optcomp"
	[timezone]="core_kernel ppx_jane"
	[typerep]="base"
	[uchar]=""
	[uri]="re stringext"
	[uri-sexp]="uri ppx_sexp_conv sexplib0"
	[uuidm]="cmdliner"
	[variantslib]="base"
)

_ocaml_gen_tr_deps() {
	for d ; do
		_items[dev-ml/${d}:=]=1
		if [[ -v _GLOBAL_OCAML_DEPS[$d] ]]; then
			_ocaml_gen_tr_deps ${_GLOBAL_OCAML_DEPS[$d]}
		else
			eqawarn "$d (transitive dep) not handled by ocaml-deps.eclass"
		fi
	done
}

ocaml_gen_deps() {
	if [[ -v _GLOBAL_OCAML_DEPS[$1] ]]; then
		declare -A -g _items=()
		_ocaml_gen_tr_deps ${_GLOBAL_OCAML_DEPS[$1]}
		echo ${!_items[*]}
	else
		die "${1} not handled by ocaml-deps.eclass"
	fi
}
