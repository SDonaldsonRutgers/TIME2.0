* Encoding: UTF-8.
 * First attempt entering

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Firstattempt_Pre WITH Firstattempt_Post (PAIRED)
  /MISSING ANALYSIS.

* Second attempt

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Secondattempt_Pre WITH Secondattempt_Post (PAIRED)
  /MISSING ANALYSIS.

 * Checkout

USE ALL.
COMPUTE filter_$=(Onlinestore_Pre = 1 | Onlinestore_Post = 1).
VARIABLE LABELS filter_$ 'Onlinestore_Pre = 1 | Onlinestore_Post = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

 * Zero age verification

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=@0ageverification_Pre WITH @0ageverification_Post (PAIRED)
  /MISSING ANALYSIS.

 * At delivery

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Atdelivery_Pre WITH Atdelivery_Post (PAIRED)
  /MISSING ANALYSIS.

 * Public records

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Publicrecords_Pre WITH Publicrecords_Post (PAIRED)
  /MISSING ANALYSIS.

 * Input age

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Inputage_Pre WITH Inputage_Post (PAIRED)
  /MISSING ANALYSIS.

 * Drivers license

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Driverslicense_Pre WITH Driverslicense_Post (PAIRED)
  /MISSING ANALYSIS.

 * After submitting

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Aftersubmitting_Pre WITH Atdelivery_Post (PAIRED)
  /MISSING ANALYSIS.

 * Challenge questions

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Challengequestions_Pre WITH Challengequestions_Post (PAIRED)
  /MISSING ANALYSIS.

 * Social security

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Socialsecurity_Pre WITH Socialsecurity_Post (PAIRED)
  /MISSING ANALYSIS.

 * Checkbox

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Checkbox_Pre WITH Checkbox_Post (PAIRED)
  /MISSING ANALYSIS.

 *Credit cards

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Creditcards_Pre WITH Creditcards_Post (PAIRED)
  /MISSING ANALYSIS.

 * Purchase attempt first try

NPAR TESTS
  /WILCOXON=CompletePA_Pre WITH Creditcards_Post (PAIRED)
  /MISSING ANALYSIS.

USE ALL.
COMPUTE filter_$=(CompletePA_Pre = 1 | CompletePA_Post = 1).
VARIABLE LABELS filter_$ 'CompletePA_Pre = 1 | CompletePA_Post = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*First attempt

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Firstattempt_Pre WITH Firstattempt_Post (PAIRED)
  /MISSING ANALYSIS.

* Second attempt

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Secondattempt_Pre WITH Secondattempt_Post (PAIRED)
  /MISSING ANALYSIS.

 * Flavored Products  
    
NPAR TESTS
  /WILCOXON=Flavored_Ecig_Pre Flavored_JUUL_Pre Flavored_Disposable_Pre Flavored_LCC_Pre WITH 
    Flavored_Ecig_Post Flavored_JUUL_Post Flavored_Disposable_Post Flavored_LCC_Post (PAIRED)
  /MISSING ANALYSIS.


*Rate for Ecig

NPAR TESTS
  /WILCOXON=Ecig_Rate_Pre WITH Ecig_Rate_Post (PAIRED)
  /MISSING ANALYSIS.

*Rate for JUUL

NPAR TESTS
  /WILCOXON=JUUL_Rate_Pre WITH JUUL_Rate_Post (PAIRED)
  /MISSING ANALYSIS.

*Rate for Disposable

NPAR TESTS
  /WILCOXON=Disposable_Rate_Pre WITH Disposable_Rate_Post (PAIRED)
  /MISSING ANALYSIS.

*Rate for LCC

NPAR TESTS
  /WILCOXON=LCC_Rate_Pre WITH LCC_Rate_Post (PAIRED)
  /MISSING ANALYSIS.

*Overall Rate

NPAR TESTS
  /WILCOXON=Overall_Rate_Pre WITH Overall_Rate_Post (PAIRED)
  /MISSING ANALYSIS.
