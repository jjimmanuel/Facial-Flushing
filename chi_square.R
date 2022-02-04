# chi-square test for sex: p-value = 0.0009712
sex_chisq = chisq.test(cda_plus_full$flush.recode, cda_plus_full$sex.14)
summary(sex_chisq)

  #drinkers/flushers vs drinkers/nonflushers: p-value = 1
  df_dnf_flush = c(drinkers_flushers$flush.recode, drinkers_nonflushers$flush.recode)
  df_dnf_sex = c(drinkers_flushers$sex.14, drinkers_nonflushers$sex.14)
  tab1 = table(df_dnf_flush, df_dnf_sex)
  tab1
  chisq.test(tab1)

  #drinkers/flushers vs nondrinkers: p-value = 0.002397
  df_nd_flush = c(drinkers_flushers$flush.recode, nondrinkers$flush.recode)
  df_nd_sex = c(drinkers_flushers$sex.14, nondrinkers$sex.14)
  tab2 = table(df_nd_flush, df_nd_sex)
  tab2
  chisq.test(tab2)

  #drinkers/nonflushers vs nondrinkers: p-value = 0.008043
  dnf_nd_flush = c(drinkers_nonflushers$flush.recode, nondrinkers$flush.recode)
  dnf_nd_sex = c(drinkers_nonflushers$sex.14, nondrinkers$sex.14)
  tab3 = table(dnf_nd_flush, dnf_nd_sex)
  tab3
  chisq.test(tab3)




#chi-square test for CDA/PLUS: p-value = 0.1219
cda_plus_chisq = chisq.test(cda_plus_full$flush.recode, cda_plus_full$`CDA/PLUS`)
summary(cda_plus_chisq)

