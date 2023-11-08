* Encoding: UTF-8.
*Second Generation E-Cig

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Ecig_Menthol_Pre Ecig_Fruit_Pre Ecig_Sweet_Pre Ecig_Liquor_Pre WITH Ecig_Menthol_Post 
    Ecig_Fruit_Post Ecig_Sweet_Post Ecig_Liquor_Post (PAIRED)
  /MISSING ANALYSIS.

*JUUL

NPAR TESTS
  /WILCOXON=JUUL_Menthol_Pre JUUL_Fruit_Pre JUUL_Sweet_Pre JUUL_Liquor_Pre WITH JUUL_Menthol_Post 
    JUUL_Fruit_Post JUUL_Sweet_Post JUUL_Liquor_Post (PAIRED)
  /MISSING ANALYSIS.


*Disposable

NPAR TESTS
  /WILCOXON=Disposable_Menthol_Pre Disposable_Fruit_Pre Disposable_Sweet_Pre Disposable_Liquor_Pre 
    WITH Disposable_Menthol_Post Disposable_Fruit_Post Disposable_Sweet_Post Disposable_Liquor_Post 
    (PAIRED)
  /MISSING ANALYSIS.

*LCC

NPAR TESTS
  /WILCOXON=LCC_Menthol_Pre LCC_Fruit_Pre JUUL_Sweet_Pre LCC_Liquor_Pre WITH LCC_Menthol_Post 
    LCC_Fruit_Post JUUL_Sweet_Post LCC_Liquor_Post (PAIRED)
  /MISSING ANALYSIS.

USE ALL.
COMPUTE filter_$=(CompletePA_Pre = 1 | CompletePA_Post = 1).
VARIABLE LABELS filter_$ 'CompletePA_Pre = 1 | CompletePA_Post = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*Flavored Products

NPAR TESTS
  /WILCOXON=Flavored_Ecig_Cart_Pre Flavored_JUUL_Cart_Pre Flavored_Disposable_Cart_Pre 
    Flavored_LCC_Cart_Pre WITH Flavored_Ecig_Cart_Post Flavored_JUUL_Cart_Post 
    Flavored_Disposable_Cart_Post Flavored_LCC_Cart_Post (PAIRED)
  /MISSING ANALYSIS.

 * Price
  
 DATASET ACTIVATE DataSet1.
EXAMINE VARIABLES=Price_Pre Price_Post
  /PLOT BOXPLOT STEMLEAF NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES EXTREME
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.



T-TEST PAIRS=Price_Pre WITH Price_Post (PAIRED)
  /ES DISPLAY(TRUE) STANDARDIZER(SD)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

*Buy rate Second gen ecigs
    
DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Rate_ECig_Pre WITH Rate_ECig_Post (PAIRED)
  /MISSING ANALYSIS.

*Buy rate JUUL
    
 NPAR TESTS
  /WILCOXON=Rate_JUUL_Pre WITH Rate_JUUL_Post (PAIRED)
  /MISSING ANALYSIS.

*Buy rate Disposables
    
NPAR TESTS
  /WILCOXON=Rate_Disposable_Pre WITH Rate_Disposable_Post (PAIRED)
  /MISSING ANALYSIS.

*Buy rate LCC
    
NPAR TESTS
  /WILCOXON=Rate_LCC_Pre WITH Rate_LCC_Post (PAIRED)
  /MISSING ANALYSIS.

*Buy rate Overall
    
NPAR TESTS
  /WILCOXON=Rate_Overall_Pre WITH Rate_Overall_Post (PAIRED)
  /MISSING ANALYSIS.

*Shipping to Jurisdictions

NPAR TESTS
  /WILCOXON=Rate_SF_Pre WITH Rate_SF_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Rate_MB_Pre WITH Rate_MB_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Rate_BH_Pre WITH Rate_BH_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Rate_OverallJur_Pre WITH Rate_OverallJur_Post (PAIRED)
  /MISSING ANALYSIS.

*Local Pre-Post
  
DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=((Onlinestore_Pre = 1) | (Onlinestore_Post = 1)).
VARIABLE LABELS filter_$ '(Onlinestore_Pre = 1) | (Onlinestore_Post = 1) (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

NPAR TESTS
  /WILCOXON=Local_Pre Statewide_Pre WITH Local_Post Statewide_Post (PAIRED)
  /MISSING ANALYSIS.
