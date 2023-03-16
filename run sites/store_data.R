setwd("F:/rwsc/site_data/0.3")

save(c_Pue, file="FR_Pue.RDA")
write.csv(c_Pue,file= "FR_Pue.CSV")

cor(c_Pue$exp_et, c_Pue$beta_et)

cor(c_Pue$exp_et, c_Pue$rwsc)

cor(c_Pue$rwsc, c_Pue$beta_et)