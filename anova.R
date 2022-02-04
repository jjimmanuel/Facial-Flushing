#one-way anova for age: p-value = 0.00133
age_anova = aov(as.numeric(cda_plus_full$age.14) ~ as.factor(cda_plus_full$flush.recode))
summary(age_anova)

post_hoc_age = TukeyHSD(age_anova)
summary(post_hoc_age)
#drinkers/nonflushers vs drinkers/flushers: p-value = 0.9995931
#drinkers/nonflushers vs nondrinkers: p-value = 0.0104384
#drinkers/flushers vs nondrinkers: p-value = 0.0069555


#one-way anova for BMI: p-value = 0.391
bmi_anova = aov(as.numeric(cda_plus_full$BMI.15) ~ as.factor(cda_plus_full$flush.recode))
summary(bmi_anova)


#one-way anova for A1c: p-value = 0.659
a1c_anova = aov(as.numeric(cda_plus_full$A1c.15) ~ as.factor(cda_plus_full$flush.recode))
summary(a1c_anova)



