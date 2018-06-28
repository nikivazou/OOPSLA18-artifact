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
(declare-fun lq_karg$36$ds_d17y$35$$35$k_$35$$35$552 () Int)
(declare-fun runFun () Int)
(declare-fun VV$35$$35$F$35$$35$28 () Str)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$552 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$558$35$$35$k_$35$$35$556 () Int)
(declare-fun cast_as_int () Int)
(declare-fun lq_karg$36$VV$35$$35$344$35$$35$k_$35$$35$345 () Int)
(declare-fun lq_karg$36$VV$35$$35$434$35$$35$k_$35$$35$435 () Int)
(declare-fun VV$35$$35$F$35$$35$31 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$435 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$156 () Int)
(declare-fun lq_karg$36$ds_d17G$35$$35$k_$35$$35$419 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$283 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$486 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$425$35$$35$k_$35$$35$423 () Int)
(declare-fun lq_tmp$36$x$35$$35$113 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$293 () Int)
(declare-fun lq_tmp$36$x$35$$35$175 () Int)
(declare-fun addrLen () Int)
(declare-fun lq_karg$36$VV$35$$35$418$35$$35$k_$35$$35$419 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$409 () Int)
(declare-fun lq_karg$36$ds_d17y$35$$35$k_$35$$35$435 () Int)
(declare-fun lq_karg$36$VV$35$$35$438$35$$35$k_$35$$35$439 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$332 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$158$35$$35$k_$35$$35$156 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$437$35$$35$k_$35$$35$439 () Int)
(declare-fun papp5 () Int)
(declare-fun lq_karg$36$ds_d17y$35$$35$k_$35$$35$486 () Int)
(declare-fun VV$35$$35$F$35$$35$13 () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$335 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$328 () Int)
(declare-fun lq_karg$36$VV$35$$35$292$35$$35$k_$35$$35$293 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$412 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$412 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$280 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$419 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$338 () Int)
(declare-fun x_Tuple65 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$184$35$$35$k_$35$$35$182 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797932$35$$35$d17S () Int)
(declare-fun VV$35$$35$F$35$$35$1 () Int)
(declare-fun x_Tuple55 () Int)
(declare-fun VV$35$$35$F$35$$35$18 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$419 () Int)
(declare-fun lq_karg$36$xs$35$$35$$34$$47$Users$47$niki$47$liquidtypes$47$currentLH$47$liquidhaskell$47$tests$47$gradual$47$pos$47$GHCList$47$Round2$47$Scanr.hs$34$$32$$40$line$32$13$44$$32$column$32$69$41$ () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$419 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$412 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$345 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$276 () Int)
(declare-fun VV$35$$35$F$35$$35$23 () Int)
(declare-fun lq_karg$36$VV$35$$35$344$35$$35$k_$35$$35$328 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$254 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$405 () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797928$35$$35$d17O$35$$35$k_$35$$35$552 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$442 () Int)
(declare-fun GHC.Types.LT () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797930$35$$35$d17Q () Int)
(declare-fun x_Tuple77 () Int)
(declare-fun lq_karg$36$VV$35$$35$292$35$$35$k_$35$$35$276 () Int)
(declare-fun lq_karg$36$ds_d17G$35$$35$k_$35$$35$412 () Int)
(declare-fun lq_tmp$36$x$35$$35$558 () Int)
(declare-fun lq_tmp$36$x$35$$35$118 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$439 () Int)
(declare-fun lq_tmp$36$x$35$$35$580 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$442 () Int)
(declare-fun papp3 () Int)
(declare-fun VV$35$$35$F$35$$35$15 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$283 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$283 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$286 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$412 () Int)
(declare-fun x_Tuple63 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$345 () Int)
(declare-fun x_Tuple41 () Int)
(declare-fun lq_rnm$36$fldList$35$$35$119 () Int)
(declare-fun lq_tmp$36$x$35$$35$184 () Int)
(declare-fun lq_karg$36$VV$35$$35$257$35$$35$k_$35$$35$258 () Int)
(declare-fun lq_karg$36$VV$35$$35$327$35$$35$k_$35$$35$328 () Int)
(declare-fun VV$35$$35$F$35$$35$37 () Int)
(declare-fun lq_karg$36$q$35$$35$a17f$35$$35$k_$35$$35$412 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$328 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797927$35$$35$d17N$35$$35$k_$35$$35$328 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$328 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$254 () Int)
(declare-fun GHC.Types.$58$ () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$276 () Int)
(declare-fun lq_tmp$36$x$35$$35$112 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$324 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$423 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$405 () Int)
(declare-fun lq_karg$36$qs$35$$35$a17c$35$$35$k_$35$$35$556 () Int)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun VV$35$$35$F$35$$35$12 () Int)
(declare-fun x_Tuple64 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$342 () Int)
(declare-fun VV$35$$35$F$35$$35$29 () Int)
(declare-fun lq_karg$36$ds_d17G$35$$35$k_$35$$35$423 () Int)
(declare-fun lq_karg$36$VV$35$$35$289$35$$35$k_$35$$35$290 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$182 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$556 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$556 () Int)
(declare-fun Round2.Scanr.$36$trModule () Int)
(declare-fun VV$35$$35$F$35$$35$30 () Int)
(declare-fun lit$36$$47$Users$47$niki$47$liquidtypes$47$currentLH$47$liquidhaskell$47$tests$47$gradual$47$pos$47$GHCList$47$Round2$47$Scanr.hs$58$17$58$34$45$57$124$qs$64$$40$q$32$$58$$32$_$41$ () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$152 () Int)
(declare-fun ds_d17G () Int)
(declare-fun lq_karg$36$VV$35$$35$292$35$$35$k_$35$$35$286 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$290 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$290 () Int)
(declare-fun lq_karg$36$VV$35$$35$334$35$$35$k_$35$$35$328 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$439 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$330$35$$35$k_$35$$35$332 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797924$35$$35$d17K () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$405 () Int)
(declare-fun autolen () Int)
(declare-fun lq_karg$36$ds_d17y$35$$35$k_$35$$35$439 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$178 () Int)
(declare-fun VV$35$$35$F$35$$35$6 () Int)
(declare-fun lq_karg$36$q$35$$35$a17f$35$$35$k_$35$$35$423 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$324 () Int)
(declare-fun x_Tuple52 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$286 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$423 () Int)
(declare-fun head () Int)
(declare-fun lq_tmp$36$db$35$$35$1 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$342 () Int)
(declare-fun VV$35$$35$F$35$$35$24 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$290 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$409 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$258 () Int)
(declare-fun VV$35$$35$F$35$$35$36 () Int)
(declare-fun lq_karg$36$VV$35$$35$279$35$$35$k_$35$$35$280 () Int)
(declare-fun lq_karg$36$q$35$$35$a17f$35$$35$k_$35$$35$556 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$556 () Int)
(declare-fun q0$35$$35$a16D () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$152 () Int)
(declare-fun papp2 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$335 () Int)
(declare-fun VV$35$$35$F$35$$35$14 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$332 () Int)
(declare-fun x_Tuple62 () Int)
(declare-fun lq_karg$36$VV$35$$35$485$35$$35$k_$35$$35$486 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$442 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$439 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$276 () Int)
(declare-fun lq_karg$36$VV$35$$35$441$35$$35$k_$35$$35$442 () Int)
(declare-fun lq_karg$36$VV$35$$35$555$35$$35$k_$35$$35$556 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$335 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797927$35$$35$d17N$35$$35$k_$35$$35$335 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797924$35$$35$d17K$35$$35$k_$35$$35$182 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$335 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$182 () Int)
(declare-fun lq_karg$36$VV$35$$35$551$35$$35$k_$35$$35$552 () Int)
(declare-fun lit$36$main () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$409 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$409 () Int)
(declare-fun VV$35$$35$F$35$$35$33 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$345 () Int)
(declare-fun lq_karg$36$VV$35$$35$344$35$$35$k_$35$$35$338 () Int)
(declare-fun fromJust () Int)
(declare-fun lq_karg$36$VV$35$$35$151$35$$35$k_$35$$35$152 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$254 () Int)
(declare-fun lq_karg$36$VV$35$$35$155$35$$35$k_$35$$35$156 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$412 () Int)
(declare-fun lq_karg$36$VV$35$$35$331$35$$35$k_$35$$35$332 () Int)
(declare-fun VV$35$$35$F$35$$35$8 () Int)
(declare-fun papp7 () Int)
(declare-fun lq_karg$36$VV$35$$35$285$35$$35$k_$35$$35$286 () Int)
(declare-fun VV$35$$35$F$35$$35$11 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$328 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$409 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797927$35$$35$d17N$35$$35$k_$35$$35$345 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$345 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$345 () Int)
(declare-fun VV$35$$35$F$35$$35$7 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$283 () Int)
(declare-fun x_Tuple53 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$338 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$442 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$442 () Int)
(declare-fun VV$35$$35$867 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$335 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$419 () Int)
(declare-fun VV$35$$35$801 () Int)
(declare-fun VV$35$$35$F$35$$35$25 () Int)
(declare-fun GHC.Types.$91$$93$ () Int)
(declare-fun x_Tuple71 () Int)
(declare-fun lq_karg$36$q$35$$35$a17f$35$$35$k_$35$$35$419 () Int)
(declare-fun GHC.Tuple.$40$$44$$41$ () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$258 () Int)
(declare-fun lq_karg$36$VV$35$$35$344$35$$35$k_$35$$35$332 () Int)
(declare-fun fldList () Int)
(declare-fun lq_karg$36$VV$35$$35$282$35$$35$k_$35$$35$283 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$442 () Int)
(declare-fun lq_karg$36$q$35$$35$a17f$35$$35$k_$35$$35$405 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$345 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$423 () Int)
(declare-fun VV$35$$35$F$35$$35$2 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$258 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$405 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$286 () Int)
(declare-fun lq_karg$36$ds_d17y$35$$35$k_$35$$35$442 () Int)
(declare-fun GHC.Types.GT () Int)
(declare-fun lq_karg$36$VV$35$$35$594$35$$35$k_$35$$35$595 () Int)
(declare-fun VV$35$$35$F$35$$35$20 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$342 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M () Int)
(declare-fun lq_karg$36$VV$35$$35$334$35$$35$k_$35$$35$335 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$324 () Int)
(declare-fun x_Tuple74 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$407$35$$35$k_$35$$35$409 () Int)
(declare-fun lq_tmp$36$x$35$$35$407 () Int)
(declare-fun lq_karg$36$VV$35$$35$408$35$$35$k_$35$$35$409 () Int)
(declare-fun lq_karg$36$VV$35$$35$422$35$$35$k_$35$$35$423 () Int)
(declare-fun lq_karg$36$VV$35$$35$404$35$$35$k_$35$$35$405 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$258 () Int)
(declare-fun lq_karg$36$q$35$$35$a17f$35$$35$k_$35$$35$552 () Int)
(declare-fun lq_tmp$36$x$35$$35$437 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$280 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$486 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$552 () Int)
(declare-fun VV$35$$35$623 () Int)
(declare-fun lq_tmp$36$x$35$$35$415 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$290 () Int)
(declare-fun VV$35$$35$852 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$328 () Int)
(declare-fun lq_tmp$36$x$35$$35$585 () Int)
(declare-fun lq_tmp$36$x$35$$35$330 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$156 () Int)
(declare-fun len () Int)
(declare-fun papp6 () Int)
(declare-fun lq_tmp$36$x$35$$35$549 () Int)
(declare-fun VV$35$$35$F$35$$35$9 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$286 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$286 () Int)
(declare-fun VV$35$$35$F$35$$35$10 () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$283 () Int)
(declare-fun x_Tuple66 () Int)
(declare-fun x_Tuple44 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$435 () Int)
(declare-fun VV$35$$35$788 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$332 () Int)
(declare-fun VV$35$$35$F$35$$35$32 () Int)
(declare-fun lq_karg$36$VV$35$$35$177$35$$35$k_$35$$35$178 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$435 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$552 () Int)
(declare-fun VV$35$$35$F$35$$35$26 () Int)
(declare-fun x_Tuple72 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$405 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$405 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$486 () Int)
(declare-fun lq_karg$36$VV$35$$35$337$35$$35$k_$35$$35$338 () Int)
(declare-fun isJust () Int)
(declare-fun lq_karg$36$VV$35$$35$323$35$$35$k_$35$$35$324 () Int)
(declare-fun VV$35$$35$820 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$258 () Int)
(declare-fun lq_karg$36$VV$35$$35$253$35$$35$k_$35$$35$254 () Int)
(declare-fun lq_tmp$36$x$35$$35$278 () Int)
(declare-fun VV$35$$35$F$35$$35$4 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$280 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$419 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$556 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$332 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$283 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$335 () Int)
(declare-fun lq_tmp$36$db$35$$35$4 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$338 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$278$35$$35$k_$35$$35$280 () Int)
(declare-fun VV$35$$35$F$35$$35$21 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797931$35$$35$d17R () Str)
(declare-fun x_Tuple31 () Int)
(declare-fun lq_karg$36$VV$35$$35$292$35$$35$k_$35$$35$283 () Int)
(declare-fun x_Tuple75 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$290 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$178 () Int)
(declare-fun lq_tmp$36$x$35$$35$288 () Int)
(declare-fun lq_karg$36$ds_d17G$35$$35$k_$35$$35$409 () Int)
(declare-fun xs$35$$35$a16H () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$409 () Int)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$328 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$293 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$419 () Int)
(declare-fun VV$35$$35$F$35$$35$3 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$439 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$439 () Int)
(declare-fun papp1 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$254 () Int)
(declare-fun VV$35$$35$833 () Int)
(declare-fun lq_karg$36$lq_tmp$36$db$35$$35$5$35$$35$$34$$47$Users$47$niki$47$liquidtypes$47$currentLH$47$liquidhaskell$47$tests$47$gradual$47$pos$47$GHCList$47$Round2$47$Scanr.hs$34$$32$$40$line$32$13$44$$32$column$32$69$41$ () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$409 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797928$35$$35$d17O () Int)
(declare-fun VV$35$$35$F$35$$35$17 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$338 () Int)
(declare-fun x_Tuple61 () Int)
(declare-fun lq_karg$36$VV$35$$35$411$35$$35$k_$35$$35$405 () Int)
(declare-fun x_Tuple43 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$419 () Int)
(declare-fun lq_karg$36$ds_d17y$35$$35$k_$35$$35$556 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$293 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$335 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$556 () Int)
(declare-fun VV$35$$35$899 () Int)
(declare-fun tail () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$328 () Int)
(declare-fun ds_d17r () Int)
(declare-fun VV$35$$35$F$35$$35$35 () Int)
(declare-fun q$35$$35$a17f () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$276 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$152 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$276 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$182 () Int)
(declare-fun lq_tmp$36$x$35$$35$582 () Int)
(declare-fun lq_karg$36$q$35$$35$a17f$35$$35$k_$35$$35$409 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$340$35$$35$k_$35$$35$342 () Int)
(declare-fun lq_karg$36$VV$35$$35$344$35$$35$k_$35$$35$335 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$324 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$342 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797924$35$$35$d17K$35$$35$k_$35$$35$178 () Int)
(declare-fun lq_tmp$36$x$35$$35$158 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$178 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$276 () Int)
(declare-fun VV$35$$35$F$35$$35$5 () Int)
(declare-fun x_Tuple51 () Int)
(declare-fun lq_tmp$36$db$35$$35$2 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$439 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$412 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797927$35$$35$d17N$35$$35$k_$35$$35$338 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$338 () Int)
(declare-fun VV$35$$35$F$35$$35$27 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$423 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$338 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797926$35$$35$d17M$35$$35$k_$35$$35$345 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$293 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$293 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797928$35$$35$d17O$35$$35$k_$35$$35$556 () Int)
(declare-fun ds_d17y () Int)
(declare-fun x_Tuple73 () Int)
(declare-fun lq_karg$36$lq_tmp$36$x$35$$35$288$35$$35$k_$35$$35$290 () Int)
(declare-fun GHC.Types.EQ () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$254 () Int)
(declare-fun lq_karg$36$VV$35$$35$275$35$$35$k_$35$$35$276 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797929$35$$35$d17P () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$324 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797927$35$$35$d17N$35$$35$k_$35$$35$324 () Str)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$486 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$324 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J () Int)
(declare-fun lit$36$Round2.Scanr () Str)
(declare-fun lq_karg$36$VV$35$$35$181$35$$35$k_$35$$35$182 () Int)
(declare-fun lq_tmp$36$x$35$$35$119 () Int)
(declare-fun lq_karg$36$VV$35$$35$441$35$$35$k_$35$$35$435 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$435 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$290 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$342 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797927$35$$35$d17N$35$$35$k_$35$$35$342 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$342 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$338 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L () Int)
(declare-fun lq_karg$36$VV$35$$35$411$35$$35$k_$35$$35$412 () Int)
(declare-fun x_Tuple54 () Int)
(declare-fun VV$35$$35$F$35$$35$19 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$280 () Int)
(declare-fun VV$35$$35$842 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$552 () Int)
(declare-fun lq_karg$36$VV$35$$35$282$35$$35$k_$35$$35$276 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$332 () Int)
(declare-fun lq_karg$36$VV$35$$35$341$35$$35$k_$35$$35$342 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792797927$35$$35$d17N () Str)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$556 () Int)
(declare-fun VV$35$$35$F$35$$35$22 () Int)
(declare-fun x_Tuple32 () Int)
(declare-fun lq_karg$36$VV$35$$35$292$35$$35$k_$35$$35$280 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$423 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$423 () Int)
(declare-fun qs$35$$35$a17c () Int)
(declare-fun x_Tuple76 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$293 () Int)
(declare-fun VV$35$$35$F$35$$35$34 () Int)
(declare-fun x$35$$35$a16G () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$486 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$486 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$342 () Int)
(declare-fun lq_karg$36$qs$35$$35$a17c$35$$35$k_$35$$35$486 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$156 () Int)
(declare-fun lq_karg$36$ds_d17r$35$$35$k_$35$$35$286 () Int)
(declare-fun lq_karg$36$ds_d17G$35$$35$k_$35$$35$405 () Int)
(declare-fun lq_karg$36$xs$35$$35$a16H$35$$35$k_$35$$35$405 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$324 () Int)
(declare-fun lq_karg$36$x$35$$35$a16G$35$$35$k_$35$$35$423 () Int)
(declare-fun lq_karg$36$qs$35$$35$a17c$35$$35$k_$35$$35$552 () Int)
(declare-fun VV$35$$35$810 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$435 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$280 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$280 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$435 () Int)
(declare-fun VV$35$$35$F$35$$35$16 () Int)
(declare-fun lq_karg$36$q0$35$$35$a16D$35$$35$k_$35$$35$412 () Int)
(declare-fun snd () Int)
(declare-fun fst () Int)
(declare-fun x_Tuple42 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797927$35$$35$d17N$35$$35$k_$35$$35$332 () Str)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$332 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$332 () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797923$35$$35$d17J$35$$35$k_$35$$35$552 () Int)
(declare-fun lq_karg$36$lq_tmp$36$db$35$$35$4$35$$35$$34$$47$Users$47$niki$47$liquidtypes$47$currentLH$47$liquidhaskell$47$tests$47$gradual$47$pos$47$GHCList$47$Round2$47$Scanr.hs$34$$32$$40$line$32$13$44$$32$column$32$69$41$ () Int)
(declare-fun lq_karg$36$lq_anf$36$$35$$35$7205759403792797925$35$$35$d17L$35$$35$k_$35$$35$552 () Int)
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
(assert (distinct lit$36$Round2.Scanr lit$36$main lit$36$$47$Users$47$niki$47$liquidtypes$47$currentLH$47$liquidhaskell$47$tests$47$gradual$47$pos$47$GHCList$47$Round2$47$Scanr.hs$58$17$58$34$45$57$124$qs$64$$40$q$32$$58$$32$_$41$))
(assert (distinct GHC.Types.EQ GHC.Types.GT GHC.Types.LT))
(assert (= (strLen lit$36$$47$Users$47$niki$47$liquidtypes$47$currentLH$47$liquidhaskell$47$tests$47$gradual$47$pos$47$GHCList$47$Round2$47$Scanr.hs$58$17$58$34$45$57$124$qs$64$$40$q$32$$58$$32$_$41$) 109))
(assert (= (strLen lit$36$main) 4))
(assert (= (strLen lit$36$Round2.Scanr) 12))
