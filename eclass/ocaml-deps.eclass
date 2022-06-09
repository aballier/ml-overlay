# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: ocaml-deps.eclass
# @MAINTAINER:
# Alexis Ballier <aballier@gentoo.org>
# @AUTHOR:
# Alexis Ballier <aballier@gentoo.org>
# @BLURB: Global dependencies definitions for ocaml
# @DESCRIPTION:

if [[ -z ${_OCAML_DEPS_ECLASS} ]]; then
_OCAML_DEPS_ECLASS=1

# Keep it sorted
# It is not readonly so that another eclass can append data here for overlays.
declare -A -g _GLOBAL_OCAML_DEPS=(
	[afl-persistent]="findlib"
	[alcotest]="fmt astring cmdliner ocaml-syntax-shims stdlib-shims re uutf"
	[alcotest-async]="alcotest async_unix core_kernel async_kernel base core core_unix"
	[alcotest-lwt]="alcotest lwt logs fmt"
	[angstrom]="result bigstringaf"
	[angstrom-async]="angstrom async"
	[angstrom-lwt-unix]="angstrom lwt"
	[angstrom-unix]="angstrom"
	[ANSITerminal]=""
	[asn1-combinators]="cstruct zarith ptime"
	[astring]=""
	[async]="async_kernel async_rpc_kernel async_unix core core_kernel ppx_jane textutils ppx_log core_unix"
	[async_js]="async_kernel async_rpc_kernel ppx_jane js_of_ocaml js_of_ocaml-ppx uri uri-sexp"
	[async_extra]="async_kernel core_kernel ppx_jane core"
	[async_kernel]="core_kernel ppx_jane core"
	[async_unix]="async_kernel core core_kernel ppx_jane core_unix"
	[async_rpc_kernel]="async_kernel core protocol_version_header ppx_jane"
	[async_ssl]="async base core ppx_jane stdio ocaml-ctypes dune-configurator"
	[atd]="easy-format menhir re yojson"
	[atdgen]="atd atdgen-runtime biniou yojson re"
	[atdgen-codec-runtime]=""
	[atdgen-runtime]="yojson biniou camlp-streams"
	[atdj]="atd re"
	[base]="sexplib0 dune-configurator"
	[base64]=""
	[base_bigstring]="base ppx_jane int_repr"
	[base_quickcheck]="base ppx_base ppx_fields_conv ppx_let ppx_sexp_message ppx_sexp_value splittable_random ppxlib"
	[batteries]="num"
	[benchmark]=""
	[bigarray-compat]=""
	[bignum]="core ppx_jane splittable_random typerep num zarith zarith_stubs_js"
	[bigstring]=""
	[bigstring-unix]=""
	[bigstringaf]=""
	[bin_prot]="base ppx_compare ppx_custom_printf ppx_fields_conv ppx_sexp_conv ppx_variants_conv ppx_optcomp"
	[bisect_ppx]="cmdliner ppxlib"
	[biniou]="easy-format"
	[bos]="rresult astring fpath fmt logs mtime"
	[cairo2]="dune-configurator"
	[cairo2-gtk]="cairo2 lablgtk"
	[cairo2-pango]="cairo2 lablgtk"
	[calendar]=""
	[camlbz2]=""
	[camldbm]=""
	[camlimages]="base stdio graphics lablgtk"
	[camlp-streams]=""
	[camlzip]=""
	[camomile]=""
	[capnp]="result base stdio ocplib-endian res stdint"
	[ca-certs]="bos fpath ptime mirage-crypto x509 logs astring"
	[charInfo_width]="result camomile"
	[cinaps]="re"
	[cmdliner]=""
	[cohttp]="re uri uri-sexp sexplib0 stringext base64 ppx_sexp_conv"
	[cohttp-async]="async ppx_sexp_conv uri-sexp async_kernel async_unix base cohttp conduit-async
magic-mime logs fmt sexplib0 uri ipaddr core_unix"
	[cohttp-lwt]="cohttp lwt sexplib0 ppx_sexp_conv logs uri"
	[cohttp-lwt-jsoo]="cohttp cohttp-lwt lwt js_of_ocaml js_of_ocaml-ppx js_of_ocaml-lwt logs"
	[cohttp-lwt-unix]="conduit-lwt conduit-lwt-unix ppx_sexp_conv cmdliner magic-mime logs fmt cohttp-lwt lwt"
	[cohttp-lwt-unix-nossl]="ca-certs cmdliner cohttp-lwt conduit-lwt fmt logs lwt magic-mime"
	[cohttp-lwt-unix-ssl]="ca-certs cmdliner cohttp-lwt conduit-lwt fmt logs lwt magic-mime conduit-lwt-ssl cohttp-lwt-unix-nossl"
	[cohttp-top]="cohttp"
	[conduit]="astring ipaddr-sexp logs ppx_sexp_conv sexplib uri ipaddr"
	[conduit-async]="core async_ssl ipaddr ppx_here ppx_sexp_conv sexplib uri conduit async ipaddr-sexp"
	[conduit-async-ssl]="core conduit-async async async_ssl"
	[conduit-async-tls]="core conduit-async async conduit-tls"
	[conduit-lwt]="conduit ppx_sexp_conv sexplib lwt"
	[conduit-lwt-unix]="logs ca-certs conduit-lwt ipaddr ipaddr-sexp lwt_ssl ppx_sexp_conv tls uri lwt"
	[conduit-lwt-ssl]="conduit-lwt lwt_ssl"
	[conduit-lwt-tls]="conduit-lwt conduit-tls mirage-crypto-rng"
	[conduit-tls]="conduit ke tls logs bigstringaf"
	[containers]="dune-configurator seq either"
	[coq]="coq-core coq-stdlib"
	[coq-core]="zarith findlib"
	[coq-stdlib]="coq-core"
	[coqide]="coqide-server"
	[coqide-server]="coq-core"
	[core]="base base_bigstring base_quickcheck bin_prot fieldslib jane-street-headers jst-config ppx_assert ppx_base
ppx_hash ppx_inline_test ppx_jane ppx_sexp_conv ppx_sexp_message sexplib splittable_random stdio time_now typerep
variantslib"
	[core_bench]="core core_kernel ppx_jane textutils re core_unix ppx_compare ppx_fields_conv ppx_let ppx_sexp_conv"
	[core_extended]="core core_unix ppx_jane re record_builder"
	[core_kernel]="base core int_repr ppx_jane"
	[core_profiler]="core core_kernel ppx_jane re2 shell textutils textutils_kernel"
	[core_unix]="core core_kernel expect_test_helpers_core jane-street-headers jst-config ocaml_intrinsics ppx_jane
sexplib spawn timezone"
	[cppo]=""
	[cppo_ocamlbuild]="ocamlbuild findlib"
	[craml]="fmt astring logs cmdliner"
	[crowbar]="ocplib-endian cmdliner afl-persistent"
	[crunch]="cmdliner ptime"
	[cryptokit]="zarith dune-configurator"
	[csexp]=""
	[cstruct]="fmt"
	[cstruct-async]="cstruct async async_unix core"
	[cstruct-lwt]="cstruct lwt"
	[cstruct-sexp]="cstruct sexplib"
	[cstruct-unix]="cstruct"
	[csv]=""
	[csv-lwt]="csv lwt"
	[csvtool]="csv uutf"
	[cudf]="extlib"
	[digestif]="eqaf"
	[dispatch]=""
	[dns]="fmt logs ptime domain-name gmap cstruct ipaddr lru duration metrics base64"
	[domain-name]=""
	[dose3]="cudf extlib re ocamlgraph base64 stdlib-shims"
	[dot-merlin-reader]="yojson findlib csexp result"
	[dtoa]=""
	[dune]=""
	[dune-action-plugin]="dune-glob dune-private-libs csexp stdune"
	[dune-build-info]=""
	[dune-configurator]="csexp stdune"
	[dune-glob]="dune-private-libs stdune"
	[dune-private-libs]="csexp dyn pp stdune"
	[duration]=""
	[dyn]="ordering pp"
	[easy-format]=""
	[eigen]="ocaml-ctypes"
	[either]=""
	[eliom]="findlib ppx_deriving js_of_ocaml-compiler js_of_ocaml js_of_ocaml-lwt js_of_ocaml-ppx js_of_ocaml-ppx_deriving_json
js_of_ocaml-tyxml lwt_log lwt_ppx tyxml ocsigenserver ipaddr reactiveData ppxlib ocsipersist"
	[expect_test_helpers]="async core expect_test_helpers_kernel ppx_jane sexp_pretty"
	[expect_test_helpers_core]="base base_quickcheck core ppx_jane re sexp_pretty stdio"
	[expect_test_helpers_kernel]="base base_quickcheck core_kernel ppx_jane sexp_pretty re stdio"
	[extlib]=""
	[extunix]=""
	[eqaf]="cstruct"
	[ezjsonm]="jsonm sexplib0 hex"
	[ezjsonm-lwt]="ezjsonm jsonm sexplib hex lwt"
	[fiat-p256]="bigarray-compat cstruct dune-configurator eqaf hex"
	[fileutils]="stdlib-shims"
	[fieldslib]="base"
	[findlib]=""
	[fix]=""
	[ffmpeg]="ffmpeg-avcodec ffmpeg-avdevice ffmpeg-avfilter ffmpeg-avutil ffmpeg-swresample ffmpeg-swscale ffmpeg-av"
	[ffmpeg-av]="ffmpeg-avutil ffmpeg-avcodec"
	[ffmpeg-avcodec]="ffmpeg-avutil"
	[ffmpeg-avdevice]="ffmpeg-av"
	[ffmpeg-avfilter]="ffmpeg-avutil"
	[ffmpeg-avutil]=""
	[ffmpeg-swresample]="ffmpeg-avutil ffmpeg-avcodec"
	[ffmpeg-swscale]="ffmpeg-avutil"
	[fmt]="cmdliner"
	[fpath]="astring"
	[gen]="dune-configurator seq"
	[gen_js_api]="ojs ppxlib"
	[gettext]="fileutils"
	[gettext-camomile]="gettext camomile"
	[gettext-stub]="gettext dune-configurator"
	[gmap]=""
	[graphics]="dune-configurator"
	[graphql]="graphql_parser yojson rresult seq"
	[graphql-async]="graphql async_kernel"
	[graphql-cohttp]="graphql cohttp crunch astring base64 ocplib-endian digestif"
	[graphql-lwt]="graphql lwt"
	[graphql_parser]="re fmt"
	[hacl_x25519]="cstruct eqaf"
	[hex]="cstruct"
	[hiredis]="lwt hiredis-value"
	[hiredis-value]=""
	[hkdf]="cstruct mirage-crypto"
	[hmap]=""
	[incremental]="core_kernel ppx_jane core"
	[int_repr]="base ppx_jane"
	[integers]="stdlib-shims"
	[io-page]="cstruct"
	[io-page-unix]="io-page cstruct"
	[ipaddr]="stdlib-shims macaddr domain-name"
	[ipaddr-cstruct]="ipaddr cstruct"
	[ipaddr-sexp]="ipaddr ppx_sexp_conv sexplib0"
	[iter]="result dune-configurator"
	[jane-street-headers]=""
	[jsonm]="uutf uchar"
	[jst-config]="base ppx_assert dune-configurator"
	[js_of_ocaml]="ppxlib uchar js_of_ocaml-compiler"
	[js_of_ocaml-compiler]="cmdliner yojson menhir ppxlib findlib menhirLib menhirSdk"
	[js_of_ocaml-lwt]="lwt js_of_ocaml js_of_ocaml-ppx lwt_log graphics"
	[js_of_ocaml-ocamlbuild]="ocamlbuild"
	[js_of_ocaml-ppx]="ppxlib js_of_ocaml"
	[js_of_ocaml-ppx_deriving_json]="js_of_ocaml ppxlib"
	[js_of_ocaml-toplevel]="js_of_ocaml js_of_ocaml-compiler js_of_ocaml-ppx findlib"
	[js_of_ocaml-tyxml]="tyxml reactiveData js_of_ocaml js_of_ocaml-ppx react"
	[junit]="ptime tyxml"
	[junit_alcotest]="junit alcotest"
	[junit_ounit]="junit ounit2"
	[ke]="fmt bigarray-compat"
	[lablgtk]=""
	[lablgtk3]="cairo2"
	[lablgtk3-gtkspell3]="lablgtk3"
	[lablgtk3-sourceview3]="lablgtk3"
	[lambdasoup]="markup"
	[lambda-term]="lwt_react lwt lwt_log zed camomile react mew_vi"
	[ldap]="pcre ssl ocamlnet"
	[logs]=""
	[logs-async]="logs async_kernel"
	[logs-async-reporter]="logs fmt async"
	[lru]="psq"
	[lwt]="seq result mmap ocplib-endian dune-configurator"
	[lwt_glib]="lwt"
	[lwt_log]="lwt"
	[lwt_ppx]="lwt ppxlib"
	[lwt_react]="lwt react"
	[lwt_ssl]="lwt ssl"
	[macaddr]=""
	[macaddr-cstruct]="macaddr cstruct"
	[macaddr-sexp]="macaddr ppx_sexp_conv sexplib0"
	[magic-mime]=""
	[markup]="uutf uchar"
	[markup-lwt]="markup lwt"
	[mccs]="cudf"
	[mdx]="fmt findlib astring logs cmdliner re result ocaml-version odoc-parser csexp"
	[menhir]="menhirLib menhirSdk"
	[menhirLib]=""
	[menhirSdk]=""
	[merlin]="csexp dot-merlin-reader yojson"
	[merlin-extend]=""
	[metrics]="fmt"
	[mew]="trie result"
	[mew_vi]="mew react"
	[mirage-clock]=""
	[mirage-clock-unix]="mirage-clock dune-configurator"
	[mirage-clock-freestanding]="mirage-clock"
	[mirage-crypto]="dune-configurator cstruct eqaf"
	[mirage-crypto-ec]="cstruct eqaf dune-configurator mirage-crypto mirage-crypto-rng"
	[mirage-crypto-pk]="cstruct mirage-crypto mirage-crypto-rng sexplib0 zarith eqaf"
	[mirage-crypto-rng]="dune-configurator duration cstruct logs mirage-crypto mtime lwt"
	[mirage-device]="fmt lwt"
	[mirage-kv]="lwt fmt"
	[mirage-kv-mem]="fmt mirage-clock mirage-clock-unix mirage-kv ptime rresult"
	[mirage-profile]="cstruct lwt ocplib-endian"
	[mirage-profile-unix]="mirage-profile mtime ocplib-endian"
	[mmap]="bigarray-compat"
	[msgpck]="ocplib-endian"
	[mtime]=""
	[nanomsg]="ocaml-ctypes ipaddr ppx_deriving containers bigstring"
	[npy]="camlzip"
	[num]=""
	[ocamlbuild]=""
	[ocamlformat]="base menhir cmdliner fix fpath odoc-parser ocp-indent re stdio uuseg uutf dune-build-info menhirLib
menhirSdk either ocaml-version csexp"
	[ocamlformat-rpc-lib]="csexp"
	[ocamlgraph]="stdlib-shims"
	[ocamlgraph_gtk]="stdlib-shims lablgtk ocamlgraph"
	[ocamlnet]=""
	[ocaml-compiler-libs]=""
	[ocaml-ctypes]="integers"
	[ocaml-migrate-parsetree]=""
	[ocaml-migrate-parsetree-ocamlbuild]="ocaml-migrate-parsetree ocamlbuild"
	[ocaml-syntax-shims]=""
	[ocaml-version]=""
	[ocaml_intrinsics]="dune-configurator"
	[ocplib-endian]=""
	[ocp-indent]="cmdliner findlib"
	[ocsigenserver]="camlzip findlib react ssl lwt lwt_ssl lwt_react lwt_log pcre cryptokit ipaddr cohttp-lwt-unix hmap
xml-light conduit-lwt-unix"
	[ocsigen-i18n]="ppxlib"
	[ocsigen-ppx-rpc]="ppxlib"
	[ocsigen-start]="pgocaml pgocaml_ppx safepass ocsigen-i18n eliom ocsigen-toolkit yojson resource-pooling
cohttp-lwt-unix ocamlnet re ocsigen-ppx-rpc"
	[ocsigen-toolkit]="eliom calendar js_of_ocaml"
	[ocsipersist]="lwt ocsigenserver ocsipersist-lib ocsipersist-dbm ocsipersist-pgsql ocsipersist-sqlite"
	[ocsipersist-dbm]="ocsipersist-lib lwt lwt_log xml-light ocsigenserver ocsipersist-lib camldbm"
	[ocsipersist-lib]="lwt lwt_ppx"
	[ocsipersist-pgsql]="ocsipersist-lib lwt lwt_log xml-light ocsigenserver ocsipersist-lib pgocaml"
	[ocsipersist-sqlite]="ocsipersist-lib lwt lwt_log xml-light ocsigenserver ocsipersist-lib sqlite3"
	[octavius]=""
	[odoc]="astring cmdliner fpath result tyxml fmt odoc-parser"
	[odoc-parser]="astring result"
	[ojs]="js_of_ocaml-compiler"
	[opam]="opam-client cmdliner"
	[opam-admin]="opam-client opam-file-format re"
	[opam-client]="opam-state re opam-solver cmdliner extlib opam-repository"
	[opam-core]="ocamlgraph re"
	[opam-format]="opam-core opam-file-format re"
	[opam-installer]=""
	[opam-repository]="opam-format"
	[opam-solver]="opam-format mccs dose3 cudf"
	[opam-state]="opam-repository"
	[opam-file-format]=""
	[ordering]=""
	[ounit2]="stdlib-shims seq"
	[ounit2-lwt]="ounit2 lwt seq"
	[owl]="ocaml-ctypes dune-configurator eigen owl-base npy"
	[owl-base]=""
	[owl-top]="owl ocaml-compiler-libs owl-zoo"
	[owl-zoo]="owl ocaml-compiler-libs"
	[parmap]="dune-configurator"
	[parsexp]="sexplib0 base"
	[parsexp_io]="base parsexp ppx_js_style stdio"
	[patdiff]="core core_kernel patience_diff ppx_jane pcre re core_unix expect_test_helpers_core"
	[patience_diff]="base core ppx_jane"
	[pbkdf]="mirage-crypto cstruct"
	[pcap-format]="cstruct ppx_cstruct ppx_tools"
	[pcre]="dune-configurator"
	[pgocaml]="calendar csv hex ppx_sexp_conv re ppx_deriving rresult sexplib"
	[pgocaml_ppx]="pgocaml ppx_optcomp ppxlib"
	[pomap]=""
	[postgresql]="dune-configurator"
	[pp]=""
	[pprint]=""
	[ppxfind]="ocaml-migrate-parsetree findlib"
	[ppx_assert]="base ppx_cold ppx_compare ppx_here ppx_sexp_conv ppxlib"
	[ppx_base]="ppx_cold ppx_compare ppx_enumerate ppx_hash ppx_sexp_conv ppxlib"
	[ppx_bench]="ppx_inline_test ppxlib"
	[ppx_bin_prot]="base bin_prot ppx_here ppxlib"
	[ppx_blob]="ppxlib"
	[ppx_cold]="base ppxlib"
	[ppx_compare]="base ppxlib"
	[ppx_cstruct]="cstruct ppxlib sexplib stdlib-shims"
	[ppx_custom_printf]="base ppx_sexp_conv ppxlib"
	[ppx_derivers]=""
	[ppx_deriving]="ppxlib findlib ppx_derivers result"
	[ppx_deriving_protobuf]="ppx_deriving"
	[ppx_deriving_yojson]="yojson result ppx_deriving ppxlib"
	[ppx_disable_unused_warnings]="base ppxlib"
	[ppx_driver]="ppxlib"
	[ppx_enumerate]="base ppxlib"
	[ppx_expect]="base ppx_here ppx_inline_test ppxlib re stdio"
	[ppx_fail]="base ppx_here ppxlib"
	[ppx_fields_conv]="base fieldslib ppxlib"
	[ppx_fixed_literal]="base ppxlib"
	[ppx_gen_rec]="ocaml-migrate-parsetree"
	[ppx_hash]="base ppx_compare ppx_sexp_conv ppxlib"
	[ppx_here]="base ppxlib"
	[ppx_ignore_instrumentation]="ppxlib"
	[ppx_import]="ppxlib"
	[ppx_inline_test]="base time_now ppxlib"
	[ppx_jane]="base_quickcheck ppx_assert ppx_base ppx_bench ppx_bin_prot ppx_custom_printf ppx_expect ppx_fields_conv
ppx_fixed_literal ppx_here ppx_inline_test ppx_let ppx_module_timer ppx_optcomp ppx_optional ppx_pipebang
ppx_sexp_message ppx_sexp_value ppx_stable ppx_string ppx_typerep_conv ppx_variants_conv ppxlib ppx_disable_unused_warnings
ppx_ignore_instrumentation ppx_log"
	[ppx_js_style]="base octavius ppxlib"
	[ppx_let]="base ppxlib ppx_here"
	[ppx_log]="base ppx_here ppx_sexp_conv ppx_sexp_message ppxlib sexplib"
	[ppx_metaquot]="ppxlib"
	[ppx_module_timer]="base ppx_base stdio time_now ppxlib"
	[ppx_optcomp]="base stdio ppxlib"
	[ppx_optional]="base ppxlib"
	[ppx_pipebang]="ppxlib"
	[ppx_protocol_conv]="base stdio ppxlib"
	[ppx_protocol_conv_json]="ppx_protocol_conv yojson ppx_expect ppx_inline_test"
	[ppx_protocol_conv_msgpack]="ppx_protocol_conv msgpck"
	[ppx_protocol_conv_xml_light]="ppx_protocol_conv xml-light"
	[ppx_protocol_conv_yaml]="ppx_protocol_conv yaml"
	[ppx_sexp_conv]="base sexplib0 ppxlib"
	[ppx_sexp_message]="base ppx_here ppx_sexp_conv ppxlib"
	[ppx_sexp_value]="base ppx_here ppx_sexp_conv ppxlib"
	[ppx_stable]="base ppxlib"
	[ppx_string]="base ppx_base ppxlib"
	[ppx_tools]=""
	[ppx_tools_versioned]="ocaml-migrate-parsetree"
	[ppx_typerep_conv]="base typerep ppxlib"
	[ppx_variants_conv]="base variantslib ppxlib"
	[ppxlib]="ocaml-compiler-libs ppx_derivers sexplib0 stdlib-shims"
	[protocol_version_header]="core ppx_jane"
	[psq]="seq"
	[ptime]=""
	[pyml]="stdcompat utop"
	[qcheck]="qcheck-ounit qcheck-core"
	[qcheck-alcotest]="qcheck-core alcotest"
	[qcheck-core]=""
	[qcheck-ounit]="qcheck-core ounit2"
	[qtest]="ounit2 qcheck"
	[randomconv]="cstruct"
	[re]="seq"
	[re2]="core_kernel ppx_jane core"
	[react]=""
	[reactiveData]="react"
	[reason]="merlin-extend result menhir fix ppx_derivers"
	[record_builder]="base ppx_jane"
	[redis]="re uuidm"
	[redis-lwt]="redis lwt"
	[redis-sync]="redis"
	[res]=""
	[resource-pooling]="lwt lwt_log"
	[result]=""
	[rresult]="result"
	[safepass]=""
	[sedlex]="gen ppxlib uchar"
	[seq]=""
	[sexplib]="parsexp sexplib0 num"
	[sexplib0]=""
	[sexp_pretty]="base ppx_base sexplib re"
	[sha]="stdlib-shims"
	[shell]="core core_unix jst-config ppx_jane textutils spawn"
	[snappy]=""
	[spawn]=""
	[splittable_random]="base ppx_assert ppx_bench ppx_inline_test ppx_sexp_message"
	[sqlite3]="dune-configurator"
	[stdcompat]="result uchar"
	[ssl]="dune-configurator"
	[stdint]=""
	[stdio]="base"
	[stdlib-shims]=""
	[stdune]="csexp dyn ordering pp"
	[stringext]=""
	[swagger]="atdgen re yojson"
	[textutils]="core ppx_jane core_kernel core_unix textutils_kernel uutf"
	[textutils_kernel]="core uutf ppx_jane"
	[time_now]="base jane-street-headers jst-config ppx_base ppx_optcomp"
	[timezone]="core ppx_jane"
	[tls]="ppx_sexp_conv ppx_cstruct cstruct cstruct-sexp sexplib mirage-crypto mirage-crypto-pk mirage-crypto-rng x509
domain-name fmt lwt ptime mirage-crypto-ec hkdf logs ipaddr ipaddr-sexp"
	[trie]=""
	[typerep]="base"
	[tyxml]="uutf re seq"
	[tyxml-ppx]="tyxml tyxml-syntax markup ppxlib"
	[tyxml-syntax]="re uutf ppxlib"
	[uchar]=""
	[uint]="stdint findlib"
	[uri]="angstrom stringext"
	[uri-re]="re stringext"
	[uri-sexp]="uri ppx_sexp_conv sexplib0"
	[utop]="lwt lwt_react lambda-term findlib camomile react"
	[uucd]="xmlm"
	[uucp]="uunf cmdliner uutf"
	[uunf]="cmdliner uutf"
	[uuseg]="uucp cmdliner uutf"
	[uutf]="uchar"
	[uuidm]="cmdliner"
	[variantslib]="base"
	[virtual_dom]="base core gen_js_api ppx_jane js_of_ocaml js_of_ocaml-ppx lambdasoup tyxml"
	[visitors]="ppxlib ppx_deriving result"
	[webmachine]="ptime cohttp dispatch re"
	[websocket]="base64 conduit cohttp ocplib-endian astring"
	[websocket-async]="websocket async cohttp-async core logs-async logs-async-reporter"
	[websocket-lwt-unix]="websocket lwt_log cohttp-lwt-unix"
	[wtf8]=""
	[x509]="cstruct asn1-combinators ptime base64 mirage-crypto mirage-crypto-pk mirage-crypto-ec mirage-crypto-rng
pbkdf fmt gmap domain-name logs ipaddr"
	[xmldiff]="xmlm"
	[xmlm]=""
	[xml-light]=""
	[yaml]="dune-configurator ocaml-ctypes bos"
	[yojson]="seq"
	[zarith]=""
	[zarith_stubs_js]=""
	[zed]="camomile charInfo_width react"
)

declare -A -g _GLOBAL_OCAML_BUILD_DEPS=(
	[angstrom]="ocaml-syntax-shims"
	[astring]="findlib topkg ocamlbuild"
	[bos]="findlib topkg ocamlbuild"
	[camlimages]="cppo dune-configurator findlib"
	[cohttp]="jsonm"
	[eliom]="js_of_ocaml-ocamlbuild"
	[extunix]="dune-configurator ppxlib"
	[ffmpeg-av]="dune-configurator"
	[ffmpeg-avcodec]="dune-configurator"
	[ffmpeg-avdevice]="dune-configurator"
	[ffmpeg-avfilter]="dune-configurator"
	[ffmpeg-avutil]="dune-configurator"
	[ffmpeg-swresample]="dune-configurator"
	[ffmpeg-swscale]="dune-configurator"
	[fmt]="findlib topkg ocamlbuild"
	[fpath]="findlib topkg ocamlbuild"
	[gettext]="cppo"
	[graphql_parser]="menhir"
	[hmap]="topkg findlib ocamlbuild"
	[logs]="findlib topkg ocamlbuild"
	[lwt]="cppo"
	[mdx]="cppo"
	[merlin-extend]="cppo"
	[mirage-profile]="ppx_cstruct"
	[mtime]="findlib topkg ocamlbuild"
	[nanomsg]="findlib"
	[ocplib-endian]="cppo"
	[ocsigen-i18n]="findlib"
	[odoc]="cppo"
	[opam-core]="cppo"
	[owl]="base stdio"
	[ppx_deriving]="cppo"
	[ppx_deriving_protobuf]="cppo ppx_tools ppxfind"
	[ppx_tools]="cppo"
	[ptime]="findlib topkg ocamlbuild"
	[pyml]="findlib"
	[react]="findlib topkg ocamlbuild"
	[reason]="findlib"
	[rresult]="findlib topkg ocamlbuild"
	[utop]="cppo"
	[uucd]="findlib topkg ocamlbuild"
	[uucp]="findlib topkg ocamlbuild"
	[uunf]="findlib topkg ocamlbuild"
	[uuidm]="findlib topkg ocamlbuild"
	[uuseg]="findlib topkg ocamlbuild"
	[visitors]=""
	[yojson]="cppo"
	[xmlm]="findlib topkg ocamlbuild"
)

declare -A -g _GLOBAL_OCAML_TEST_DEPS=(
	[alcotest-async]="cmdliner fmt re"
	[alcotest-lwt]="cmdliner re"
	[angstrom]="alcotest ppx_let"
	[asn1-combinators]="alcotest"
	[atd]="alcotest"
	[atdgen]="atdgen-codec-runtime"
	[base64]="alcotest bos rresult"
	[bigstring]="alcotest bigstring-unix"
	[bigstringaf]="alcotest"
	[bisect_ppx]="ocamlformat"
	[capnp]="base_quickcheck ounit2"
	[ca-certs]="alcotest fmt"
	[charInfo_width]="ppx_expect"
	[cinaps]="ppx_jane"
	[coq-core]="ounit2"
	[cohttp]="alcotest fmt crowbar"
	[cohttp-async]="core ounit2 mirage-crypto"
	[cohttp-lwt-jsoo]="lwt_ppx"
	[cohttp-lwt-unix]="ounit2"
	[cohttp-lwt-unix-nossl]="ounit2"
	[cohttp-lwt-unix-ssl]="ounit2"
	[conduit-lwt-unix]="lwt_log lwt_ssl ssl"
	[containers]="csexp gen iter ounit2 qcheck qtest uutf"
	[crowbar]="calendar fpath uucp uunf uutf pprint"
	[crunch]="lwt mirage-kv mirage-kv-mem"
	[cstruct]="alcotest crowbar"
	[cstruct-sexp]="alcotest"
	[digestif]="alcotest astring bos findlib fmt fpath rresult"
	[dispatch]="alcotest"
	[dns]="alcotest"
	[domain-name]="alcotest"
	[dose3]="ounit2"
	[dtoa]="ounit2"
	[dune-action-plugin]="ppx_expect"
	[duration]="alcotest"
	[ezjsonm]="alcotest"
	[ezjsonm-lwt]="alcotest ppx_sexp_conv"
	[eqaf]="alcotest base64 crowbar"
	[extunix]="ounit2"
	[fiat-p256]="alcotest asn1-combinators benchmark ppx_deriving_yojson rresult stdlib-shims yojson"
	[fileutils]="ounit2"
	[gen]="qcheck qtest ounit2"
	[gen_js_api]="js_of_ocaml-compiler"
	[gettext]="ounit2"
	[gettext-camomile]="ounit2 fileutils"
	[gettext-stub]="fileutils ounit2"
	[gmap]="alcotest fmt"
	[graphql]="alcotest"
	[graphql-async]="alcotest async_unix"
	[graphql-cohttp]="alcotest cohttp-lwt-unix graphql-lwt"
	[graphql-lwt]="alcotest"
	[graphql_parser]="alcotest"
	[hacl_x25519]="benchmark hex alcotest ppx_blob ppx_deriving_yojson stdlib-shims yojson"
	[hkdf]="alcotest"
	[io-page]="ounit2"
	[io-page-unix]="ounit2"
	[ipaddr]="ounit2 ppx_sexp_conv"
	[ipaddr-sexp]="ipaddr-cstruct ounit2"
	[iter]="mdx qcheck qtest"
	[js_of_ocaml]="ppx_expect num re"
	[js_of_ocaml-compiler]="ppx_expect num re"
	[js_of_ocaml-lwt]="ppx_expect num re ppxlib"
	[js_of_ocaml-ocamlbuild]="ppx_expect num re ppxlib"
	[js_of_ocaml-ppx]="ppx_expect num re"
	[js_of_ocaml-ppx_deriving_json]="ppx_expect num re"
	[js_of_ocaml-toplevel]="ppx_expect num re cohttp-lwt-unix graphics ppxlib"
	[js_of_ocaml-tyxml]="ppx_expect num re ppxlib"
	[ke]="alcotest bigstringaf"
	[lambdasoup]="ounit2"
	[logs]="mtime"
	[lru]="alcotest qcheck-alcotest qcheck-core"
	[macaddr]="ounit2 ppx_sexp_conv"
	[macaddr-sexp]="macaddr-cstruct ounit2"
	[mdx]="alcotest lwt"
	[metrics]="alcotest"
	[mirage-crypto]="ounit2"
	[mirage-crypto-ec]="alcotest asn1-combinators hex mirage-crypto-pk ppx_deriving ppx_deriving_yojson yojson"
	[mirage-crypto-pk]="ounit2 randomconv"
	[mirage-crypto-rng]="ounit2 randomconv"
	[mirage-kv]="alcotest"
	[mirage-kv-mem]="alcotest ppx_deriving"
	[msgpck]="alcotest"
	[ocaml-migrate-parsetree]="cinaps"
	[ocaml-version]="alcotest"
	[ocamlformat]="alcotest ocamlformat-rpc-lib"
	[odoc]="bos findlib ppx_expect yojson"
	[odoc-parser]="ppx_expect"
	[opam-file-format]="alcotest"
	[owl]="alcotest"
	[pbkdf]="alcotest"
	[pcap-format]="ounit2 mmap"
	[pp]="ppx_expect"
	[ppxlib]="base cinaps findlib stdio re sexplib0"
	[ppx_blob]="alcotest"
	[ppx_cstruct]="cppo cstruct-sexp cstruct-unix ounit2 ppx_sexp_conv lwt_ppx ocaml-migrate-parsetree"
	[ppx_deriving]="ounit2"
	[ppx_deriving_protobuf]="ounit2 uint"
	[ppx_deriving_yojson]="ounit2"
	[ppx_import]="ounit2 ppx_deriving ppx_sexp_conv"
	[ppx_protocol_conv]="alcotest ppx_sexp_conv sexplib"
	[ppx_protocol_conv_json]="alcotest ppx_sexp_conv sexplib"
	[ppx_protocol_conv_msgpack]="alcotest ppx_sexp_conv sexplib msgpck"
	[ppx_protocol_conv_xml_light]="alcotest ppx_sexp_conv sexplib"
	[ppx_protocol_conv_yaml]="alcotest ppx_sexp_conv sexplib yaml"
	[psq]="alcotest qcheck-alcotest qcheck-core"
	[qcheck]="alcotest"
	[qcheck-core]="alcotest"
	[re]="ounit2"
	[redis-lwt]="containers ounit2"
	[redis-sync]="containers ounit2"
	[sha]="ounit2"
	[spawn]="ppx_expect"
	[sqlite3]="ppx_inline_test"
	[stdint]="qcheck"
	[stringext]="ounit2 qtest"
	[tls]="alcotest cstruct-unix ounit2 randomconv"
	[tyxml]="alcotest"
	[tyxml-ppx]="alcotest"
	[tyxml-syntax]="alcotest"
	[uri]="ounit2 ppx_sexp_conv"
	[uri-re]="ounit2 ppx_sexp_conv"
	[uri-sexp]="ounit2"
	[uucp]="uucd uunf uutf"
	[x509]="alcotest cstruct-unix"
	[yaml]="alcotest ezjsonm junit_alcotest mdx crowbar fmt logs"
	[yojson]="alcotest"
	[webmachine]="ounit2"
)

_ocaml_gen_tr_deps() {
	for d ; do
		local pkg=dev-ml/${d}
		[[ ${d} == ocsigenserver ]] && pkg=www-servers/${d}
		if [[ -v _items[${pkg}:=] ]] ; then
			continue
		fi

		_items[${pkg}:=]=1
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

ocaml_gen_bdeps() {
	local pn
	for pn in ${_GLOBAL_OCAML_BUILD_DEPS[$1]}; do
		printf "dev-ml/${pn}\n"
	done
}

ocaml_gen_test_deps() {
	if [[ -v _GLOBAL_OCAML_TEST_DEPS[$1] ]]; then
		local pn
		printf 'test? (\n'
		for pn in ${_GLOBAL_OCAML_TEST_DEPS[$1]}; do
			printf "\tdev-ml/${pn}\n"
		done
		printf ')\n'
	fi
}

ocaml_check_deps() {
	local opamfile=${1-${PN}.opam}
	einfo "Checking ${PN} against ${opamfile}"
	mkdir -p "${T}/depcheck"
	pushd "${T}/depcheck" &> /dev/null
	printf "%s" "${_GLOBAL_OCAML_DEPS[${PN}]}" | tr ' ' '\n' | sort -u > ebuild.deps || die
	printf "%s" "${_GLOBAL_OCAML_BUILD_DEPS[${PN}]}" | tr ' ' '\n' | sort -u > ebuild_build.deps || die
	printf "%s" "${_GLOBAL_OCAML_TEST_DEPS[${PN}]}" | tr ' ' '\n' | sort -u > ebuild_test.deps || die
	cat << EOF >> parser.ml
open OpamParserTypes

let rec is_test_dep = function
		[] -> false
	| Logop (_,_,l,r)::q -> is_test_dep (l::(r::q))
	| Ident (_,"with-test")::_ -> true
	| Ident (_,"test")::_ -> true
	| _ :: q -> is_test_dep q;;
let rec is_build_dep = function
		[] -> false
	| Logop (_,_,l,r)::q -> is_build_dep (l::(r::q))
	| Ident (_,"build")::_ -> true
	| _ :: q -> is_build_dep q;;
let rec is_run_dep = function
		[] -> true
	| Logop (_,_,l,r)::q -> is_run_dep (l::(r::q))
	| Ident (_,"with-doc")::_ -> false
	| Ident (_,"with-test")::_ -> false
	| Ident (_,"test")::_ -> false
	| Ident (_,"build")::_ -> false
	| Ident (_,"dev")::_ -> false
	| _ :: q -> is_run_dep q;;
let rec get_deps = function
		[] -> List ( ("",0,0), [])
	| Variable (_,"depends",v)::q -> List ( ("",0,0), [v; get_deps q])
	| Variable (_,"depopts",v)::q -> List ( ("",0,0), [v; get_deps q])
	| _::q -> get_deps q;;
let rec print_deps is_dep = function
		List (_,l) -> List.iter (print_deps is_dep) l
	| Option (_,v,l) -> if is_dep l then print_deps (fun _ -> true) v else ()
	| String (_,"ocaml") -> ()
	| String (_,"ocaml-freestanding") -> ()
	| String (_,"dune") -> ()
	| String (_,"jbuilder") -> ()
	| String (_,"launchd") -> ()
	| String (_,"base-bigarray") -> ()
	| String (_,"base-bytes") -> ()
	| String (_,"base-threads") -> ()
	| String (_,"base-unix") -> ()
	| String (_,"conf-cairo") -> ()
	| String (_,"conf-capnproto") -> ()
	| String (_,"conf-dpkg") -> ()
	| String (_,"conf-ffmpeg") -> ()
	| String (_,"conf-freetype") -> ()
	| String (_,"conf-glib-2") -> ()
	| String (_,"conf-gmp-powm-sec") -> ()
	| String (_,"conf-gnomecanvas") -> ()
	| String (_,"conf-gtksourceview3") -> ()
	| String (_,"conf-gtk3") -> ()
	| String (_,"conf-g++") -> ()
	| String (_,"conf-jq") -> ()
	| String (_,"conf-libev") -> ()
	| String (_,"conf-libpcre") -> ()
	| String (_,"conf-libssl") -> ()
	| String (_,"conf-libX11") -> ()
	| String (_,"conf-nanomsg") -> ()
	| String (_,"conf-npm") -> ()
	| String (_,"conf-openblas") -> ()
	| String (_,"conf-openssl") -> ()
	| String (_,"conf-pkg-config") -> ()
	| String (_,"conf-postgresql") -> ()
	| String (_,"conf-python-3") -> ()
	| String (_,"conf-python-3-dev") -> ()
	| String (_,"conf-python3-yaml") -> ()
	| String (_,"conf-sqlite3") -> ()
	| String (_,"conf-snappy") -> ()
	| String (_,"conf-which") -> ()
	| String (_,"conf-zlib") -> ()
	| String (_,"ctypes-foreign") -> ()
	| String (_,"mirage-xen-ocaml") -> ()
	| String (_,"ounit") -> if is_dep [] then Printf.printf "ounit2\n" else ()
	| String (_,"ctypes") -> if is_dep [] then Printf.printf "ocaml-ctypes\n" else ()
	| String (_,"ocamlfind") -> if is_dep [] then Printf.printf "findlib\n" else ()
	| String (_,"dbm") -> if is_dep [] then Printf.printf "camldbm\n" else ()
	| String (_,s) -> if is_dep [] then Printf.printf "%s\n" s else ()
	| _ -> ();;

let fn = match (Filename.basename Sys.argv.(0)) with
   "builddeps" -> is_build_dep
 | "rundeps"  -> is_run_dep
 | "testdeps"  -> is_test_dep
 | _ -> failwith "unhandled case" in
print_deps fn (get_deps (OpamParser.file Sys.argv.(1)).file_contents);;
EOF
	ocamlfind ocamlc -package opam-file-format -linkpkg parser.ml  -o rundeps || die
	ln -s rundeps builddeps || die
	ln -s rundeps testdeps || die
	( ./rundeps "${S}/${opamfile}" || die ) | sort -u > opam.deps
	diff -u ebuild.deps opam.deps || die "Difference between opam and ebuild runtime deps"
	( ./builddeps "${S}/${opamfile}" || die ) | sort -u > opam_build.deps
	diff -u ebuild_build.deps opam_build.deps || die "Difference between opam and ebuild build deps"
	( ./testdeps "${S}/${opamfile}" || die ) | sort -u > opam_test.deps
	diff -u ebuild_test.deps opam_test.deps || die "Difference between opam and ebuild test deps"
	popd &> /dev/null
}

fi
