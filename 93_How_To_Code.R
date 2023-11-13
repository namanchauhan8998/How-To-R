#
#          Author: Dr Eugene O'Loughlin
#     Video Title: How To... Perform a Two-Way ANOVA in R
#    Video Number: #93
#
#####################################################################
#
#    Null Hypotheses: 
#   FACTOR A: SUPPLEMENT (Vit C, Orange Juice)
#    Null hypo H01: The means of observations grouped by one factor are the same
#    Alt  hypo H11: The means of observations grouped by one factor are not the same [The factor A Suppliment indeed have some effect ]
#    
#    FACTOR B: DOSAGE (0.5,1,2)
#    Null hypo H02: The means of observations grouped by the other factor are the same
#    Alt  hypo H12: The means of observations grouped by the other factor are not the same [The factor B dosage indeed have some effect ]
#
#
#    
#    Null hypo H03: There is no interaction between the two factors 
#    Alt  hypo H13: There is interaction between the two factors 
#    Alpha = 0.05
#
#####################################################################
#
# The Effect of Vitamin C on Tooth Growth in Guinea Pigs
ToothGrowth     # In-built data set in R
#
# Visualize with two plots
plot(len ~ supp + factor(dose), data = ToothGrowth) 
#
# Perform Two-Way ANOVA
twoANOVA <- aov(len ~ supp * factor(dose), data = ToothGrowth)
summary(twoANOVA)
#
# For Supp: We see that the F value is 15.572  and P value(0.00023)
# Since this is less than the Pvalue(at 0.001) Pvalue < aplha(0.001)
# We reject the Hull hypo : 