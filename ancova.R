#ancova controlling for age and sex
#contains graph of estimated marginal means

diastolic_ancova = ancova(formula = meanDiastolic.15 ~ flush.recode + sex.14 + age.14, data = COPY, emMeans = ~ flush.recode, emmTables = TRUE)

