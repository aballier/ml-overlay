����  D<  |  /  ��   @@�0shared_brace.res@@@@�6const_implicit_iso.res@�&62.res@@�1double_assign.res@@@�-longline2.res@@�*format.res@�(dbg1.res�
  �INCORRECT:diff token: E VS (
File <COCCIOUTPUTFILE>, line 5, column 2, charpos = 75
  around = 'E',
  whole content = 		E = NULL;("PCI");
File "tests/dbg1.res", line 4, column 5, charpos = 72
  around = '(',
  whole content = 		DBG("PCI");

    diff (result(<) vs expected_result(>)) = 
    @@ -1,6 +1,6 @@
     
     static inline void alloc_resource(struct pci_dev *dev, int idx)
     {
    -		DBG
    -		E = NULL;("PCI");
    +		DBG("PCI");
    +		E = NULL;
     }
@�/change_type.res@@�+testand.res@�*strid2.res@�)ifend.res@@@�&ar.res@@@�(stm2.res@�'max.res@@�-list_test.res@@�*signed.res@�*ktype2.res@@@�=labels_metastatement_ver1.res@@�2failing_andany.res�
  `INCORRECT:diff token: request_irq VS }
File <COCCIOUTPUTFILE>, line 4, column 8, charpos = 111
  around = 'request_irq',
  whole content =         request_irq(irq_flags);
File "tests/failing_andany.res", line 4, column 0, charpos = 103
  around = '}',
  whole content = }

    diff (result(<) vs expected_result(>)) = 
    @@ -1,8 +1,6 @@
     static int smc_probe1(struct net_device *dev, void __iomem *ioaddr,
     		      unsigned long irq_flags)
     {
    -        request_irq(irq_flags);
    -	register_netdev(dev);
     }
     
     static int smc_probe2(struct net_device *dev, void __iomem *ioaddr,
@@�6toplevel_macrostmt.res@�*insdef.res@@�)endif.res@�)allex.res@@@@�(skip.res@�,addifdef.res@@@@@�-fieldsmin.res@@�,parenmac.res@�(cast.res@@@�(stm3.res@�*sizeof.res@@�(p1p2.res@@�'ws2.res@�2minusdots_ver1.res@@�,longlong.res@�'arg.res@@@�+expnest.res@�'a3d.res@@�3delete_function.res@@@@�(long.res@�)ktype.res@�'bus.res@@�-iterprint.res@@@@�.ifdefmeta1.res@@�/bad_typedef.res@@@�+condexp.res@@�-inclifdef.res@�1finalize_only.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@�'com.res@@�)boolr.res@@�-multipath.res@@�)serio.res�
  INCORRECT:diff token: init_MUTEX VS mutex_init
File "tests/serio.c", line 7, column 1, charpos = 130
  around = 'init_MUTEX',
  whole content = 	init_MUTEX(&serio->drv_sem);
File "tests/serio.res", line 7, column 1, charpos = 130
  around = 'mutex_init',
  whole content = 	mutex_init(&serio->new_lock);

    diff (result(<) vs expected_result(>)) = 
    @@ -4,5 +4,5 @@
     
     static void serio_init_port(struct serio *serio)
     {
    -	init_MUTEX(&serio->drv_sem);
    +	mutex_init(&serio->new_lock);
     }
�,miniswap.res@@@�.introbrace.res@�)ifzer.res@�+a_and_e.res@@�.wrongcheck.res@�'spl.res@@�(rem1.res@�4python_iteration.res@@�*static.res@�-decl_star.res@@�)empty.res@@�)minfn.res@@�)ifadd.res@�(fnty.res@�*badexp.res@@�,argument.res@@@�,reusevar.res@@�4optional_storage.res@@�-minstruct.res@�)exitp.res@@@@�-multivars.res@�(incl.res@@�-bad_kfree.res@@�+sizeptr.res@@�(stm4.res@@@�)test4.res@�*braces.res@@@@�*remaft.res@�,dc_close.res@@�6optional_qualifier.res@�5metastatement_for.res@@�(ifbr.res@�(anon.res@@�*mdeclp.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@�.switchdecl.res@�2inherited_ver1.res@@�/three_types.res@@�4line_before_last.res@�1comment_brace.res@�,bitfield.res@@�)bugon.res@@�.stm10_ver1.res@�,sizestar.res@�.dropenderr.res@�)decl2.res@�0attrs2groups.res@@�'dbg.res�
  INCORRECT:PB parsing only in generated-file
    diff (result(<) vs expected_result(>)) = 
    @@ -4,6 +4,6 @@
     	struct resource *pr, *r = &dev->resource[idx];
     
     	if (pr)
    -		DBG else
    -			pr = NULL;("PCI");
    +		DBG("PCI");
    +	else pr = NULL;
     }
@@@�(cptr.res@@�3replace_typedef.res@@�*ifdef3.res@@�/topdec_ver2.res@�+fortest.res@@�1disjexpr_ver2.res@�,cast_iso.res@@�)noret.res@�(cstr.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@@�.justremove.res@@�&p9.res@�*notest.res@@�0expopt3_ver1.res@@�(add1.res@@�*test12.res@�/longlongint.res@�(ifzz.res@�0a_and_e_ver1.res@@�-type_ver2.res�	�INCORRECT:PB parsing only in generated-file
    diff (result(<) vs expected_result(>)) = 
    @@ -1,5 +1,5 @@
     int foo() {
    -  int[10] *x;
    +  int *x[10];
       return 0;
     }
     
@�0useless_cast.res@�(stm8.res@�.array_init.res@�-addifelse.res@@@�,str_init.res@@@�.formatlist.res@�*endpos.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@�+changei.res�
  �INCORRECT:diff token: i VS xxx
File <COCCIOUTPUTFILE>, line 1, column 15, charpos = 15
  around = 'i',
  whole content = typedef struct i xxx;
File "tests/changei.res", line 1, column 15, charpos = 15
  around = 'xxx',
  whole content = typedef struct xxx istruct;

    diff (result(<) vs expected_result(>)) = 
    @@ -1,4 +1,4 @@
    -typedef struct i xxx;
    +typedef struct xxx istruct;
     
     int xxx (int xxx) {
       char xxx;
�+badwhen.res@@@@�)dropf.res@@@�-addbefore.res@@@�&kr.res@@�(slen.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
�9merge_after_iteration.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
�*icomma.res�	_seems incorrect, but only because of code that was not parsablePB parsing only in expected-file@�)test1.res@�*mincom.res@�0metaruleelem.res@�2int2bool-local.res@@@@�*string.res@�(comj.res@@�*spaces.res@�+remodif.res@�(noty.res@@�(tdnl.res@�+isotest.res@@@�8labels_metastatement.res@�+fn_todo.res@�)extra.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@@@�(vpos.res@�'fsh.res@�+format2.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@@@�/multistruct.res@�(enum.res@@�.ifdefmeta3.res@�/constructor.res@@�,after_if.res@@@@@�'csw.res@@�/topdec_ver1.res@@@�)macro.res@�)endnl.res@@�*before.res@@�'not.res@�)addes.res@@@�&y2.res@@@@�(zero.res@�-inherited.res@�,castdecl.res@�*addif1.res@@�(defe.res@�+compare.res@@�(rems.res@�*ifgoto.res@�)idstr.res@@�2type_annotated.res@@@�1scope_problem.res�
  �INCORRECT:diff token: } VS a
File <COCCIOUTPUTFILE>, line 4, column 2, charpos = 42
  around = '}',
  whole content =   }
File "tests/scope_problem.res", line 4, column 4, charpos = 44
  around = 'a',
  whole content =     a = 2;

    diff (result(<) vs expected_result(>)) = 
    @@ -1,7 +1,6 @@
     void main(int i) {
       if(1) {
         int a;
    +    a = 2;
       }
    -
    -
     }
@�/branchparen.res@@�(four.res@@�-wierdinit.res�
  Vseems incorrect, but only because of code that was not parsablediff token: dev_link_t VS struct
File "tests/wierdinit.c", line 4, column 1, charpos = 27
  around = 'dev_link_t',
  whole content = 	dev_link_t *link;
File "tests/wierdinit.res", line 4, column 1, charpos = 27
  around = 'struct',
  whole content = 	struct pcmcia_device *link;
�,ifreturn.res@�(decl.res@@�(void.res@�+dropcom.res@@�+undref3.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
�*symbol.res@@@�+mdeclp2.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@@@�3toplevel_struct.res@@�)mdecl.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
�*cststr.res@@@�7pb_distribute_type3.res�	?PROBLEM
   exn = Failure("line 7: index 53 53 already used\n")
@�,unstruct.res@@�*unelse.res@�*memory.res@@�7pb_distribute_type2.res�
  0INCORRECT:PB parsing only in generated-file
    diff (result(<) vs expected_result(>)) = 
    @@ -1,5 +1,5 @@
     int foo() {
    -  int * x;
    +  int *x;
       return 0;
     }
     
    @@ -10,6 +10,6 @@
     }
     
     int foo() {
    -  int x[45]*;
    +  int (*x)[45];
       return 0;
     }
�3parameters_dots.res@@@�2struct_typedef.res@�(stmt.res@@�+incpos1.res@�+attradd.res@@@�+spacing.res@@�(delp.res@@@�'tup.res@�'opt.res@�&ab.res@@@�&na.res@�*invert.res@�*as_stm.res@@�&fp.res@@@�.multichars.res@�-find_long.res@@@�&ty.res@�-positionc.res@�,nameless.res@@�1disjexpr_ver1.res@@@�/localglobal.res@@�*switch.res@@@�*return.res@@@�(rem2.res@@�,testand2.res@�(pcim.res@�1double_switch.res@�3bad_iso_example.res�
  �INCORRECT:diff token: ( VS x
File "tests/bad_iso_example.c", line 2, column 6, charpos = 19
  around = '(',
  whole content =   if ((x = 3)) return;
File "tests/bad_iso_example.res", line 2, column 6, charpos = 19
  around = 'x',
  whole content =   if (x) return;

    diff (result(<) vs expected_result(>)) = 
    @@ -1,4 +1,4 @@
     int main() {
    -  if ((x = 3)) return;
    +  if (x) return;
     }
     
@�*output.res@@@@@�/multi_func1.res�	�PROBLEM
   exn = Coccinelle_modules.Parse_cocci.SMPLParseError("minus: parse error: \n  File \"tests/multi_func1.cocci\", line 12, column 2, charpos = 102\n  around = 'fn2',\n  whole content =   fn2(...) {\n")
@@�*incpos.res@@@@�+regexp2.res@�(hil1.res@@@�0print_return.res@@�-video1bis.res@�)bigin.res@�*addtoo.res@@@�,isotest2.res@�.countcalls.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@@�-null_type.res@@�)typin.res@�4metastatement_if.res@@@@�/remove_call.res@�,minenum1.res@�*jloop1.res�	�PROBLEM
   exn = Coccinelle_modules.Parse_cocci.SMPLParseError("minus: parse error: \n  File \"tests/jloop1.cocci\", line 10, column 3, charpos = 129\n  around = '...>',\n  whole content =    ...>\n")
�.end_commas.res@@�-overshoot.res@�'noa.res@@�)test2.res@@@@�/output_init.res@@�,cs_check.res@@@�)cards.res@@@�(pmac.res@�*ifdef4.res@@�.match_init.res@�)exitc.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
�%a.res@@@�,cst_null.res@@@�*posiso.res@�(bc_1.res@@�+metahex.res�
  TINCORRECT:diff token: f VS }
File "tests/metahex.c", line 2, column 2, charpos = 15
  around = 'f',
  whole content =   f(3);
File "tests/metahex.res", line 2, column 0, charpos = 13
  around = '}',
  whole content = }

    diff (result(<) vs expected_result(>)) = 
    @@ -1,4 +1,2 @@
     int main() {
    -  f(3);
    -  g(0x03);
     }
@@�)param.res@@�-multitype.res@�.addifelse2.res@@@�)test0.res@@�(tern.res@�*nocast.res@�*ifdef5.res@�(getc.res@@�.multidecl3.res@@@@�/pragmatest1.res@�)addif.res@@�*expopt.res@@�3return_implicit.res@�-output.stdout@�,addtrace.res@@�0expopt3_ver2.res@@@�*disjid.res@@�+partial.res@�1fix_flow_need.res@�.badtypedef.res@@@�&of.res@�'hex.res@@�)break.res@@@�+fortype.res@�'dec.res@@@@�2struct_metavar.res@@�)rems1.res@�7pb_distribute_type4.res@�(nest.res@�*julia7.res@�(ifif.res@�*badpos.res�	�PROBLEM
   exn = Failure("rule starting on line 1: already tagged token:\nC code context\nFile \"tests/badpos.c\", line 5, column 30, charpos = 139\n  around = 'reg_ptr',\n  whole content = \t (int) -(((struct pt_regs *) reg_ptr)->orig_eax + 2));")
@@�1python_mdeclp.res@�+arraysz.res@@@@�2typedef_double.res@�+ifields.res@@�.array_size.res@@�)test3.res@�*fields.res@@�)fnret.res@@�/protoassert.res@@�&b1.res@@�,typedef3.res�
  pINCORRECT:diff token: link VS p_dev
File <COCCIOUTPUTFILE>, line 7, column 29, charpos = 137
  around = 'link',
  whole content = 	unsigned int iobase = info->link.io.BasePort1;
File "tests/typedef3.res", line 7, column 29, charpos = 137
  around = 'p_dev',
  whole content = 	unsigned int iobase = info->p_dev->io.BasePort1;

    diff (result(<) vs expected_result(>)) = 
    @@ -4,7 +4,7 @@
     
     static void should_work(foo *info)
     {
    -	unsigned int iobase = info->link.io.BasePort1;
    +	unsigned int iobase = info->p_dev->io.BasePort1;
     }
     
     static void does_work(struct bluecard_info_t *info)
@�&km.res@@�-starprint.res@@�,comments.res@@@@�*ifdef6.res@@@�-iteration.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@�*elsify.res@@�-minusdots.res@�-doublepos.res@@�1pb_params_iso.res@�0multitypedef.res@�0double_lines.res@@�+constty.res@@@�+destroy.res@@�(disj.res@�8countcalls_python.stdout@@�-const1bis.res@@�(bug1.res@@�+regexp3.res@�*ifdef1.res@@�,oddifdef.res�
  �INCORRECT:diff token: #else VS x
File <COCCIOUTPUTFILE>, line 10, column 0, charpos = 114
  around = '#else',
  whole content = #else
File "tests/oddifdef.res", line 10, column 2, charpos = 116
  around = 'x',
  whole content =   x = 0;

    diff (result(<) vs expected_result(>)) = 
    @@ -7,7 +7,9 @@
         a = 5;
     
     #ifdef FOO
    +  x = 0;
     #else
    +  x = 0;
     #endif
     }
     
    @@ -20,7 +22,9 @@
         a = 3;
     
     #ifdef FOO
    +  x = 0;
     #else
    +  x = 0;
     #endif
     }
     
    @@ -33,6 +37,8 @@
     #endif
     
     #ifdef FOO
    +  x = 0;
     #else
    +  x = 0;
     #endif
     }
�+julia10.res@@@�)orexp.res@�*allex3.res@@@�.neststruct.res@@�*tydisj.res@�*lvalue.res@@�/macro_int16.res@@�5bitfield_matching.res@�1bad_ptr_print.res@@�+smallfn.res@@@�,ty_tyexp.res@@�(loop.res@�'log.res@@�2metastatement2.res@�)fnptr.res@@�)strid.res@@@�(stm5.res@@@�.test5_ver1.res@@@�-substruct.res@@�*threea.res@�(rcu3.res@�*addif2.res@@�)test5.res@�)proto.res@�)local.res@@@�,constrem.res@@�-param_end.res@@@@�=multi_initialize_finalize.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@�&sp.res@�'sl2.res@@@@�1python_poscon.res@@�(rets.res@@�*topdec.res@@�+deftodo.res@@@�)type1.res@�(stm7.res@�&ip.res@@@@�,iterator.res@@�)test6.res@@@@@�)binop.res@@�.keep_comma.res@�&b2.res@@�)deref.res@@@�.param_ver1.res@@�.whitespace.res@�(rptr.res@�*pcomma.res@@@�4type_constraints.res@�)debug.res@@�.pragmatest.res@�)const.res@@@�*test_s.res@�*retest.res@@@�*doundo.res@@@�-gotobreak.res@�*change.res@@�*xfield.res@@�+typedef.res@�(mdec.res@�)isoif.res@�*comadd.res@@@�*dropbr.res@@@�-ifreturn4.res@@�,varargs3.res@@�2compare_const2.res@@�&sw.res@@�,varargs2.res@�.proto_ver2.res@@�7python_iteration.stdout@@�(post.res@�,mdeclrep.res@@�0doubleswitch.res@@@�'unl.res@@@@@@@�'eb1.res@@@@�:remove-code-in-branch1.res@�,addfield.res@@@�/multiremove.res@@�+undref2.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@�)ptrar.res@@@�&if.res@@@�'ip2.res@@�'sis.res@@@�+headers.res@@@�.decl_split.res�
  hINCORRECT:diff token: int VS }
File "tests/decl_split.c", line 2, column 8, charpos = 27
  around = 'int',
  whole content =         int x, y;
File "tests/decl_split.res", line 2, column 0, charpos = 19
  around = '}',
  whole content = }

    diff (result(<) vs expected_result(>)) = 
    @@ -1,3 +1,2 @@
     int func(int i) { 
    -        int x, y;
     }
�/const_array.res@@�*remcom.res@�,metaline.res@@�-dropparam.res@�2addbeforeafter.res@@@@�*poscon.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
�6pb_distribute_type.res�	�INCORRECT:PB parsing only in generated-file
    diff (result(<) vs expected_result(>)) = 
    @@ -10,6 +10,6 @@
     }
     
     int foo() {
    -  int[45] *x;
    +  int (*x)[45];
       return 0;
     }
@@�+localid.res@�&hd.res@�-fntypedef.res@@@@�+oneline.res@@@�+badzero.res@@�*double.res@�+arparam.res@@�(func.res@@@�(stm1.res@�)noty2.res@@�&td.res@�*struct.res@�+bugloop.res@�+addelse.res@@�'ty1.res@�*test11.res@�,metaops0.res@�6incompatible_value.res@@�*unfree.res@�*test10.res@@@�,twomatch.res@�-ifdefmeta.res@@@�*regexp.res@@@�,twoproto.res@@�.proto_ver1.res@�)incl2.res@@�'ifd.res@@@@@�'inc.res@�'exp.res@@�(befS.res@@�+varargs.res@�6test_unsigned_meta.res@@@@�4pb_parsing_macro.res@@�-multiplus.res@�*allex2.res@@�/test11_ver1.res@�,multidec.res@@�&pa.res@�/initializer.res@�+dowhile.res@@�'kmc.res@@�+expopt2.res@@@�+devlink.res@@�,retmacro.res@�-remstruct.res@�1match_no_meta.res@@@�+include.res@�'cst.res@@�-null_bool.res�
  "INCORRECT:diff token: ) VS !=
File <COCCIOUTPUTFILE>, line 2, column 8, charpos = 22
  around = ')',
  whole content =   if (12) return;
File "tests/null_bool.res", line 2, column 9, charpos = 23
  around = '!=',
  whole content =   if (12 != NULL) return;

    diff (result(<) vs expected_result(>)) = 
    @@ -1,6 +1,6 @@
     int main () {
    -  if (12) return;
    -  if (a && 12 && b) return;
    +  if (12 != NULL) return;
    +  if (a && 12 != NULL && b) return;
       if (12) return;
       if (a && 12 && b) return;
       x = x + 20;
�-ifreturn6.res@@�.distribute.res@@�,isococci.res@@@@@@�*typeof.res@�(tyex.res@@�)test7.res@�*inline.res@�2comment_brace2.res@@@@@@�+minenum.res@�)edots.res@@�+bigrepl.res@@�)test9.res@�(stm6.res@�0python_mdecl.res@�)foura.res@@�'fun.res@@�0param_to_exp.res@@�&op.res@@@�,reserved.res@�+nestone.res@@@�+ifdef6a.res@@�2wierd_argument.res@�'roa.res@@�+retval2.res@@@�(cr1a.res@@�,remparam.res@@@�;initializer_many_fields.res@@�1mini_null_ref.res@�*ifdef2.res@�5countcalls_python.res@@�/test10_ver1.res@@�0sizeof_julia.res@@�)test8.res@�'lid.res@@�,disjexpr.res@@�*proto2.res@@@@�0define_param.res@@@@�0strangeorder.res@�*inhmet.res@@@@�+kmalloc.res@�*inhpos.res@@@@@�'top.res@�-same_expr.res@@@�3gilles-question.res@@�.decl_space.res@�&cr.res@@�-ifreturn3.res@�.define_exp.res@@@�*retval.res@�*incdir.res�
  �INCORRECT:diff token: x VS 12
File "tests/incdir.c", line 4, column 6, charpos = 46
  around = 'x',
  whole content =   foo(x);
File "tests/incdir.res", line 4, column 6, charpos = 46
  around = '12',
  whole content =   foo(12);

    diff (result(<) vs expected_result(>)) = 
    @@ -1,5 +1,5 @@
     #include "sub/incdir2.c"
     
     int main () {
    -  foo(x);
    +  foo(12);
     }
�'ben.res@@�-type_ver1.res@@�*protox.res@�+metaops.res@�*addaft.res@@�*undref.res@�-caseprint.res@@�+nestseq.res@@@@@@@�&nl.res@�.ifdefmeta2.res@@�/gcc_min_max.res@@�(type.res@@�)swap3.res@@@@@@�-structfoo.res@�(sd_2.res@�.edots_ver1.res@@�0const_adding.res@@�9iteration_after_merge.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@@@�0idcon_python.res@�/idcon_ocaml.res�	<PROBLEM
   exn = Failure("OCaml scripting is unsupported.")
@�*constx.res@�-anonfield.res@@�)stm10.res@@�-longconst.res@@@�+expopt3.res@@�/constraints.res@@@�2pb_tag_symbols.res@@@@ �