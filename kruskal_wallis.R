# Kruskal - Wallis for Systolic BP: p-value = 0.06286
systolic_kruskal = kruskal.test(as.numeric(cda_plus_full$meanSystolic.15) ~ as.factor(cda_plus_full$flush.recode))
summary(systolic_kruskal)

# Kruskal - Wallis for Diastolic BP: p-value = 0.004175
diastolic_kruskal = kruskal.test(as.numeric(cda_plus_full$meanDiastolic.15) ~ as.factor(cda_plus_full$flush.recode))
summary(diastolic_kruskal)

post_hoc_diastolic = dunnTest(as.numeric(cda_plus_full$meanDiastolic.15) ~ as.factor(cda_plus_full$flush.recode))
summary(post_hoc_diastolic)
#drinkers/nonflushers vs drinkers/flushers: p-value = 0.009159
#drinkers/nonflushers vs nondrinkers: p-value = 0.677404
#drinkers/flushers vs nondrinkers: p-value = 0.007654


#Kruskal - Wallis for Audit Total: p-value = 0.8773
audit_Total = kruskal.test(as.numeric(cda_plus_full$auditTOTrecoded) ~ as.factor(cda_plus_full$flush.recode))
summary(audit_Total)

#Kruskal - Wallis for Audit 1: p-value = 0.5525
audit1_kruskal = kruskal.test(as.numeric(cda_plus_full$audit1recoded) ~ as.factor(cda_plus_full$flush.recode))
summary(audit1_kruskal)

#Kruskal - Wallis for Audit 2: p-value = 0.7063
audit2_kruskal = kruskal.test(as.numeric(cda_plus_full$audit2recoded) ~ as.factor(cda_plus_full$flush.recode))
summary(audit2_kruskal)

#Kruskal - Wallis for Audit 3: p-value = 0.6344
audit3_kruskal = kruskal.test(as.numeric(cda_plus_full$audit3recoded) ~ as.factor(cda_plus_full$flush.recode))
summary(audit3_kruskal)

