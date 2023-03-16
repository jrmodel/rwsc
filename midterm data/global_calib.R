pars <- calib_sofun(
  drivers = df_drivers2|>
     unnest(forcing),  
  obs = df_obs |> 
    mutate(le = le*24*60*60) |> 
    group_by(sitename) |> 
    nest(),
  settings = settings
)
