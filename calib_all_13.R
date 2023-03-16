
pars <- calib_sofun(
  drivers = df_drivers2 ,  
  obs = obs_3,
  settings = settings
)



params_modl <- list(
  kphio           = 0.08718,
  soilm_par_a     = 0.0,
  soilm_par_b     = 0.73300,
  tau_acclim_tempstress = 10,
  par_shape_tempstress  = 0.0,
  exp_et = pars$par[["exp_et"]],
  beta_et = pars$par[["beta_et"]],
  rwsc = pars$par[["rwsc"]]
)

output <- runread_pmodel_f(
  driver= df_drivers2[1,],
  par = params_modl
)

output_n <- tibble(sitename = sitename[1],
             data = output$data[[1]]|>
               list())

for ( s in 2:13){
  output <- runread_pmodel_f(
    df_drivers2[s,],
    par = params_modl
  )
  output_n<-output_n|>
    add_row(sitename =sitename[s],
            data = output$data[[1]]|>
              list())
}

output_n <- output_n|>
  rename(modelled_data = data)

alldata <- obs_3|>
  left_join(output_n, by ="sitename")
# combine modelled data and observational data 
for(s in 1: length(sitename)){
  m <- output_n[s,]$modelled_data[[1]]|>
    select(date, latenth)|>
    mutate(latenth = latenth/24/60/60)
  
  alldata[s,]$data[[1]] <- alldata[s,]$data[[1]]|>
    left_join(m,by="date")|>
    mutate(le = le/24/60/60)
}


  