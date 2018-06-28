(set-option :auto-config false)
(set-option :model true)
(set-option :model.partial false)

(define-sort Str () Int)
(declare-fun strLen (Str) Int)
(declare-fun subString (Str Int Int) Str)
(declare-fun concatString (Str Str) Str)
(define-sort Elt () Int)
(define-sort Set () (Array Elt Bool))
(define-fun smt_set_emp () Set ((as const Set) false))
(define-fun smt_set_mem ((x Elt) (s Set)) Bool (select s x))
(define-fun smt_set_add ((s Set) (x Elt)) Set (store s x true))
(define-fun smt_set_cup ((s1 Set) (s2 Set)) Set ((_ map or) s1 s2))
(define-fun smt_set_cap ((s1 Set) (s2 Set)) Set ((_ map and) s1 s2))
(define-fun smt_set_com ((s Set)) Set ((_ map not) s))
(define-fun smt_set_dif ((s1 Set) (s2 Set)) Set (smt_set_cap s1 (smt_set_com s2)))
(define-fun smt_set_sub ((s1 Set) (s2 Set)) Bool (= smt_set_emp (smt_set_dif s1 s2)))
(define-sort Map () (Array Elt Elt))
(define-fun smt_map_sel ((m Map) (k Elt)) Elt (select m k))
(define-fun smt_map_sto ((m Map) (k Elt) (v Elt)) Map (store m k v))
(define-fun bool_to_int ((b Bool)) Int (ite b 1 0))
(define-fun Z3_OP_MUL ((x Int) (y Int)) Int (* x y))
(define-fun Z3_OP_DIV ((x Int) (y Int)) Int (div x y))
(declare-fun lq_karg$36$Round1.ErrorEmptyList.prel_list_str$35$$35$k_$35$$35$199 () Str)
(declare-fun lq_tmp$36$x$35$$35$131 () Int)
(declare-fun runFun () Int)
(declare-fun cast_as_int () Int)
(declare-fun lit$36$Prelude. () Str)
(declare-fun lq_karg$36$VV$35$$35$212$35$$35$k_$35$$35$213 () Int)
(declare-fun addrLen () Int)
(declare-fun papp5 () Int)
(declare-fun lq_tmp$36$x$35$$35$99 () Int)
(declare-fun VV$35$$35$F$35$$35$1 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797013$35$$35$dT3 () Str)
(declare-fun lq_tmp$36$x$35$$35$167 () Int)
(declare-fun lq_rnm$36$v$35$$35$60 () Int)
(declare-fun lit$36$Round1.ErrorEmptyList () Str)
(declare-fun GHC.Types.LT () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797011$35$$35$dT1 () Str)
(declare-fun VV$35$$35$301 () Int)
(declare-fun papp3 () Int)
(declare-fun lq_karg$36$VV$35$$35$$34$$47$Users$47$niki$47$tmp$47$OOPLSA18$45$artifact$47$tests$47$GHCList$47$Round1$47$ErrorEmptyList.hs$34$$32$$40$line$32$5$44$$32$column$32$38$41$ () Str)
(declare-fun VV$35$$35$291 () Str)
(declare-fun VV$35$$35$323 () Int)
(declare-fun lq_karg$36$Round1.ErrorEmptyList.prel_list_str$35$$35$k_$35$$35$135 () Str)
(declare-fun lq_karg$36$Round1.ErrorEmptyList.prel_list_str$35$$35$k_$35$$35$171 () Str)
(declare-fun VV$35$$35$288 () Int)
(declare-fun VV$35$$35$266 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797009$35$$35$dSZ () Str)
(declare-fun lq_karg$36$Round1.ErrorEmptyList.prel_list_str$35$$35$k_$35$$35$213 () Str)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun lq_rnm$36$fldList$35$$35$68 () Int)
(declare-fun VV$35$$35$356 () Int)
(declare-fun lit$36$$58$$32$empty$32$list () Str)
(declare-fun autolen () Int)
(declare-fun VV$35$$35$F$35$$35$6 () Int)
(declare-fun VV$35$$35$330 () Str)
(declare-fun head () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797008$35$$35$dSY () Str)
(declare-fun lq_karg$36$Round1.ErrorEmptyList.prel_list_str$35$$35$k_$35$$35$195 () Str)
(declare-fun papp2 () Int)
(declare-fun VV$35$$35$327 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797007$35$$35$dSX$35$$35$k_$35$$35$195 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797009$35$$35$dSZ$35$$35$k_$35$$35$199 () Str)
(declare-fun lq_karg$36$fun$35$$35$anN$35$$35$k_$35$$35$171 () Str)
(declare-fun lit$36$main () Str)
(declare-fun VV$35$$35$262 () Int)
(declare-fun fromJust () Int)
(declare-fun papp7 () Int)
(declare-fun lq_karg$36$fun$35$$35$anN$35$$35$k_$35$$35$135 () Str)
(declare-fun fldList () Int)
(declare-fun lq_tmp$36$x$35$$35$193 () Int)
(declare-fun Round1.ErrorEmptyList.$36$trModule () Int)
(declare-fun lq_karg$36$VV$35$$35$134$35$$35$k_$35$$35$135 () Int)
(declare-fun lq_karg$36$VV$35$$35$198$35$$35$k_$35$$35$199 () Int)
(declare-fun lq_karg$36$fun$35$$35$anN$35$$35$k_$35$$35$195 () Str)
(declare-fun VV$35$$35$F$35$$35$2 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797007$35$$35$dSX$35$$35$k_$35$$35$171 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797008$35$$35$dSY$35$$35$k_$35$$35$199 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797007$35$$35$dSX$35$$35$k_$35$$35$135 () Str)
(declare-fun GHC.Types.GT () Int)
(declare-fun fun$35$$35$anN () Str)
(declare-fun lq_karg$36$VV$35$$35$194$35$$35$k_$35$$35$195 () Int)
(declare-fun lq_karg$36$VV$35$$35$170$35$$35$k_$35$$35$171 () Int)
(declare-fun VV$35$$35$352 () Int)
(declare-fun VV$35$$35$241 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797014$35$$35$dT4 () Int)
(declare-fun VV$35$$35$304 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797010$35$$35$dT0$35$$35$k_$35$$35$195 () Str)
(declare-fun lq_anf$36$$35$$35$7205759403792797010$35$$35$dT0 () Str)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun VV$35$$35$340 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797012$35$$35$dT2 () Int)
(declare-fun lq_tmp$36$x$35$$35$132 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797008$35$$35$dSY$35$$35$k_$35$$35$171 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797007$35$$35$dSX$35$$35$k_$35$$35$199 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797009$35$$35$dSZ$35$$35$k_$35$$35$195 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797008$35$$35$dSY$35$$35$k_$35$$35$135 () Str)
(declare-fun isJust () Int)
(declare-fun VV$35$$35$F$35$$35$4 () Int)
(declare-fun VV$35$$35$310 () Int)
(declare-fun VV$35$$35$317 () Str)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun VV$35$$35$F$35$$35$3 () Int)
(declare-fun papp1 () Int)
(declare-fun lq_tmp$36$x$35$$35$168 () Int)
(declare-fun x () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797008$35$$35$dSY$35$$35$k_$35$$35$195 () Str)
(declare-fun tail () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797009$35$$35$dSZ$35$$35$k_$35$$35$171 () Str)
(declare-fun Round1.ErrorEmptyList.prel_list_str () Str)
(declare-fun lq_karg$36$fun$35$$35$anN$35$$35$k_$35$$35$199 () Str)
(declare-fun lq_tmp$36$x$35$$35$84 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797010$35$$35$dT0$35$$35$k_$35$$35$199 () Str)
(declare-fun VV$35$$35$F$35$$35$5 () Int)
(declare-fun GHC.Types.EQ () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797007$35$$35$dSX () Str)
(declare-fun VV$35$$35$336 () Int)
(declare-fun VV$35$$35$314 () Int)
(declare-fun snd () Int)
(declare-fun fst () Int)
(declare-fun apply$35$$35$13 (Int (_ BitVec 32)) Bool)
(declare-fun apply$35$$35$9 (Int Str) Bool)
(declare-fun apply$35$$35$6 (Int Bool) Str)
(declare-fun apply$35$$35$11 (Int Str) (_ BitVec 32))
(declare-fun apply$35$$35$15 (Int (_ BitVec 32)) (_ BitVec 32))
(declare-fun apply$35$$35$0 (Int Int) Int)
(declare-fun apply$35$$35$8 (Int Str) Int)
(declare-fun apply$35$$35$1 (Int Int) Bool)
(declare-fun apply$35$$35$7 (Int Bool) (_ BitVec 32))
(declare-fun apply$35$$35$14 (Int (_ BitVec 32)) Str)
(declare-fun apply$35$$35$10 (Int Str) Str)
(declare-fun apply$35$$35$5 (Int Bool) Bool)
(declare-fun apply$35$$35$2 (Int Int) Str)
(declare-fun apply$35$$35$12 (Int (_ BitVec 32)) Int)
(declare-fun apply$35$$35$3 (Int Int) (_ BitVec 32))
(declare-fun apply$35$$35$4 (Int Bool) Int)
(declare-fun smt_lambda$35$$35$13 ((_ BitVec 32) Bool) Int)
(declare-fun smt_lambda$35$$35$9 (Str Bool) Int)
(declare-fun smt_lambda$35$$35$6 (Bool Str) Int)
(declare-fun smt_lambda$35$$35$11 (Str (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$15 ((_ BitVec 32) (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$0 (Int Int) Int)
(declare-fun smt_lambda$35$$35$8 (Str Int) Int)
(declare-fun smt_lambda$35$$35$1 (Int Bool) Int)
(declare-fun smt_lambda$35$$35$7 (Bool (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$14 ((_ BitVec 32) Str) Int)
(declare-fun smt_lambda$35$$35$10 (Str Str) Int)
(declare-fun smt_lambda$35$$35$5 (Bool Bool) Int)
(declare-fun smt_lambda$35$$35$2 (Int Str) Int)
(declare-fun smt_lambda$35$$35$12 ((_ BitVec 32) Int) Int)
(declare-fun smt_lambda$35$$35$3 (Int (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$4 (Bool Int) Int)
(declare-fun lam_arg$35$$35$1$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$2$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$3$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$4$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$5$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$6$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$7$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$1$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$2$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$3$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$4$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$5$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$6$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$7$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$1$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$2$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$3$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$4$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$5$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$6$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$7$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$1$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$2$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$3$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$4$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$5$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$6$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$7$35$$35$4 () Bool)
(assert (distinct lit$36$main lit$36$$58$$32$empty$32$list lit$36$Round1.ErrorEmptyList lit$36$Prelude.))
(assert (distinct GHC.Types.EQ GHC.Types.GT GHC.Types.LT))
(assert (= (strLen lit$36$Prelude.) 8))
(assert (= (strLen lit$36$Round1.ErrorEmptyList) 21))
(assert (= (strLen lit$36$$58$$32$empty$32$list) 12))
(assert (= (strLen lit$36$main) 4))
(push 1)
(assert (not (exists ((lq_karg$36$VV$35$$35$$34$$47$Users$47$niki$47$tmp$47$OOPLSA18$45$artifact$47$tests$47$GHCList$47$Round1$47$ErrorEmptyList.hs$34$$32$$40$line$32$5$44$$32$column$32$38$41$ Int) (len$32$VV Int)) (and (= len$32$VV 0)))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(push 1)
(assert (not (exists ((lq_karg$36$VV$35$$35$$34$$47$Users$47$niki$47$tmp$47$OOPLSA18$45$artifact$47$tests$47$GHCList$47$Round1$47$ErrorEmptyList.hs$34$$32$$40$line$32$5$44$$32$column$32$38$41$ Int) (len$32$VV Int)) (and (>= len$32$VV 0)))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(push 1)
(assert (not (exists ((lq_karg$36$VV$35$$35$$34$$47$Users$47$niki$47$tmp$47$OOPLSA18$45$artifact$47$tests$47$GHCList$47$Round1$47$ErrorEmptyList.hs$34$$32$$40$line$32$5$44$$32$column$32$38$41$ Int) (len$32$VV Int)) (and (> len$32$VV 0)))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(push 1)
(assert (not (forall ((lq_karg$36$VV$35$$35$$34$$47$Users$47$niki$47$tmp$47$OOPLSA18$45$artifact$47$tests$47$GHCList$47$Round1$47$ErrorEmptyList.hs$34$$32$$40$line$32$5$44$$32$column$32$38$41$ Int)) (=> true true))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(push 1)
(assert (not (forall ((lq_karg$36$VV$35$$35$$34$$47$Users$47$niki$47$tmp$47$OOPLSA18$45$artifact$47$tests$47$GHCList$47$Round1$47$ErrorEmptyList.hs$34$$32$$40$line$32$5$44$$32$column$32$38$41$ Int) (len$32$VV Int)) (=> (and (= len$32$VV 0)) true))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(push 1)
(assert (not (forall ((lq_karg$36$VV$35$$35$$34$$47$Users$47$niki$47$tmp$47$OOPLSA18$45$artifact$47$tests$47$GHCList$47$Round1$47$ErrorEmptyList.hs$34$$32$$40$line$32$5$44$$32$column$32$38$41$ Int) (len$32$VV Int)) (=> (and (>= len$32$VV 0)) true))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(push 1)
(assert (not (forall ((lq_karg$36$VV$35$$35$$34$$47$Users$47$niki$47$tmp$47$OOPLSA18$45$artifact$47$tests$47$GHCList$47$Round1$47$ErrorEmptyList.hs$34$$32$$40$line$32$5$44$$32$column$32$38$41$ Int) (len$32$VV Int)) (=> (and (> len$32$VV 0)) true))))
(check-sat)
; SMT Says: Unsat
(pop 1)
(exit)
