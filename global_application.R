load("F:/rwsc/midterm data/par_global_4.RDA")


params_modl_2 <- list(
  kphio           = 0.08718,
  soilm_par_a     = 0.0,
  soilm_par_b     = 0.73300,
  tau_acclim_tempstress = 10,
  par_shape_tempstress  = 0.0,
  exp_et = pars$par[["exp_et"]],
  beta_et = pars$par[["beta_et"]],
  rwsc = pars$par[["rwsc"]]
)

df_drivers3 <- tibble(df_drivers2)
# run the model for these parameters
output_2 <- runread_pmodel_f(
  df_drivers3,
  par = params_modl_2
)

