* Encoding: UTF-8.
 * Second-Generation E-Cigs

DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(Brand_Vendor = 1).
VARIABLE LABELS filter_$ 'Brand_Vendor = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Ecig_Menthol_Pre WITH Ecig_Menthol_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Ecig_Tobacco_Pre WITH Ecig_Tobacco_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Ecig_Fruit_Pre WITH Ecig_Fruit_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Ecig_Sweet_Pre WITH Ecig_Sweet_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Ecig_Other_Pre WITH Ecig_Other_Post (PAIRED)
  /MISSING ANALYSIS.

 * Disposable E-Cigs
    
NPAR TESTS
  /WILCOXON=Disposable_Menthol_Pre WITH Disposable_Menthol_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Disposable_Tobacco_Pre WITH Disposable_Tobacco_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Disposable_Fruit_Pre WITH Disposable_Fruit_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
    /WILCOXON=Disposable_Sweet_Pre WITH Disposable_Sweet_Post (PAIRED)
    /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Disposable_Other_Pre WITH Disposable_Other_Post (PAIRED)
  /MISSING ANALYSIS.

 * Little Cigars
    
NPAR TESTS
  /WILCOXON=Cigarillos_Menthol_Pre WITH Cigarillos_Menthol_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Cigarillos_Tobacco_Pre WITH Cigarillos_Tobacco_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Cigarillos_Fruit_Pre WITH Cigarillos_Fruit_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
    /WILCOXON=Cigarillos_Sweet_Pre WITH Cigarillos_Sweet_Post (PAIRED)
    /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Cigarillos_Other_Pre WITH Cigarillos_Other_Post (PAIRED)
  /MISSING ANALYSIS.

 * Eliquids
    
NPAR TESTS
  /WILCOXON=Eliquids_Menthol_Pre WITH Eliquids_Menthol_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Eliquids_Tobacco_Pre WITH Eliquids_Tobacco_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Eliquids_Fruit_Pre WITH Eliquids_Fruit_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
    /WILCOXON=Eliquids_Sweet_Pre WITH Eliquids_Sweet_Post (PAIRED)
    /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Eliquids_Other_Pre WITH Eliquids_Other_Post (PAIRED)
  /MISSING ANALYSIS.

* Tobaccofree
    
NPAR TESTS
  /WILCOXON=Tobaccofree_Menthol_Pre WITH Tobaccofree_Menthol_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Tobaccofree_Tobacco_Pre WITH Tobaccofree_Tobacco_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Tobaccofree_Fruit_Pre WITH Tobaccofree_Fruit_Post (PAIRED)
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
    /WILCOXON=Tobaccofree_Sweet_Pre WITH Tobaccofree_Sweet_Post (PAIRED)
    /MISSING ANALYSIS.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /WILCOXON=Tobaccofree_Other_Pre WITH Tobaccofree_Other_Post (PAIRED)
  /MISSING ANALYSIS.

* Healthwarnings
    
NPAR TESTS
  /WILCOXON=Healthwarnings_Addicitivechemical_Pre WITH Healthwarnings_Addictivechemical_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Healthwarnings_Alternativetocigarettes_Pre WITH Healthwarnings_Alternativetocigarettes_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Healthwarnings_Pregnantwomen_Pre WITH Healthwarnings_PregnantWomen_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Healthwarnings_Quittingnow_Pre WITH Healthwarnings_Quittingnow_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Healthwarnings_Smokingcausescancer_Pre WITH Healthwarnings_Smokincausescancer_Post (PAIRED)
  /MISSING ANALYSIS.

* Tobacco Control Policies
    
NPAR TESTS
  /WILCOXON=Antitobacco_Pre WITH Antitobacco_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=PACTACT_Pre WITH PACTACT_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Notforminors_Pre WITH Notforminors_Post (PAIRED)
  /MISSING ANALYSIS.


* Promotional
    
NPAR TESTS
  /WILCOXON=Rewardprogram_Pre WITH Rewardprogram_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Eventregistration_Pre WITH Eventregistration_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Coupon_Pre WITH Coupon_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Timelimited_Pre WITH Timelimited_Post(PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Storelocator_Pre WITH Storelocator_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Chatblogbulletin_Pre WITH Chatblogbulletin_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Contests_Pre WITH Contests_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Games_Pre WITH Games_Post (PAIRED)
  /MISSING ANALYSIS.

NPAR TESTS
  /WILCOXON=Customerreviews_Pre WITH Customerreviews_Post (PAIRED)
  /MISSING ANALYSIS
  
NPAR TESTS
  /WILCOXON=Newsletter_Pre WITH Newsletter_Post (PAIRED)
  /MISSING ANALYSIS
  
NPAR TESTS
  /WILCOXON=Newsletter_Yes_Pre WITH Newsletter_Yes_Post (PAIRED)
  /MISSING ANALYSIS






