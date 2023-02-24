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
  