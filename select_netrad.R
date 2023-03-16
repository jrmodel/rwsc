df_drivers3 <-df_drivers2


quantile(df_drivers3[1,]$forcing[[1]]$netrad, 0.5)


df_drivers3[1,]$forcing[[1]] <- df_drivers3[1,]$forcing[[1]] |>
  filter(df_drivers3[1,]$forcing[[1]]$netrad >164.6458)


for (i in 1 :13){
  s = quantile(df_drivers3[i,]$forcing[[1]]$netrad, 0.5)
  df_drivers3[i,]$forcing[[1]] <- df_drivers3[i,]$forcing[[1]] |>
    filter(df_drivers3[i,]$forcing[[1]]$netrad >s)
}


pars <- calib_sofun(
  drivers = df_drivers3 |> 
    filter(sitename == "FR-LBr"),  
  obs = df_obs |> 
    mutate(le = le*24*60*60) |> 
    group_by(sitename) |> 
    nest() |> 
    filter(sitename == "FR-LBr"),
  settings = settings
)

df_drivers3[1,]$forcing[[1]] <- df_drivers3[1,]$forcing[[1]] |>
  replace(df_drivers3[1,]$forcing[[1]]$netrad <43.22,NA)


obs_4 <-df_obs  
  mutate(df_obs$le = df$obsle*24*60*60) |> 
  group_by(sitenames) |> 
  nest() 
  
obs_4 <-df_obs |>
     mutate(le = le* 24*60*60)  

obs_4 <- obs_4 |>
  group_by(sitename)|>
  nest()
  
pars <- calib_sofun(
  drivers = df_drivers2 |> 
    filter(sitename == "AT-Neu"),  
  obs = obs_4[1,],
  settings = settings
)

obs_5 <- obs_3
for (s in 1 : length(sitenames)){
  Selected <- sample.int(nrow(obs_5[[2]][[s]]), 365*3)
  obs_5[[2]][[s]][-Selected,]$le <- NA
  
}
settings <- list(
  method  = "gensa",
  metric  = cost_mae_swbm,
  control = list(max.call = 1e4),  # change this to 1e4 for final calibration
  par     = list(
    exp_et  = list(lower=0.01, upper=1.5, init = 0.03),
    beta_et = list(lower=0.03,  upper=1.0, init = 0.6),
    rwsc    = list(lower=15,   upper=1000, init = 200)
  )
)





pars <- calib_sofun(
  drivers = df_drivers2 |> 
    filter(sitename == "NL-Loo"),  
  obs = obs_3,
  settings = settings
)
