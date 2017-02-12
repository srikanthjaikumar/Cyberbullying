* Encoding: UTF-8.

T-TEST GROUPS=interact_with_strangers(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=Cyberbullying_Freq
  /CRITERIA=CI(.95).


REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT Cyberbullying_response_defense_scale
  /METHOD=ENTER Cyberbullying_YesorNo
  /SCATTERPLOT=(*ZRESID ,*ZPRED).


T-TEST GROUPS=Nationality_recoded(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=Cyberbullying_activities_scale
  /CRITERIA=CI(.95).

T-TEST GROUPS=Sex(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=Cyberbullying_Freq
  /CRITERIA=CI(.95).

RELIABILITY
  /VARIABLES=SeeCyberbullying_2 SeeCyberbullying_3 SeeCyberbullying_5 SeeCyberbullying_6
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS.

RELIABILITY
  /VARIABLES=Cyberbullying_In_School_2 Cyberbullying_In_School_3 Cyberbullying_In_School_4
    Cyberbullying_In_School_7 Cyberbullying_In_School_6
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS.

RELIABILITY
  /VARIABLES=BullyingActivities_Tease BullyingActivities_NameCalling BullyingActivities_Laughing
    BullyingActivities_Threats BullyingActivities_Rumors BullyingActivities_Attacking
    BullyingActivities_Excluding
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS.

