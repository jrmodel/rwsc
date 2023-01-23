fill_missing_netrad <- function(df){
  
  df <- df |> 
    select(date, netrad, ppfd, temp)
  
  pp <- recipes::recipe(netrad ~ temp + ppfd, 
                        data = df |> 
                          drop_na()) |> 
    
    recipes::step_center(all_numeric(), -all_outcomes()) |>
    recipes::step_scale(all_numeric(), -all_outcomes()) |> 
    
    recipes::step_impute_knn(all_outcomes(), neighbors = 5)
  
  pp_prep <- recipes::prep(pp, training = df |> drop_na()) 
  
  df_baked <- recipes::bake(pp_prep, new_data = df)
  
  df <- df |> 
    bind_cols(df_baked |> select(netrad_filled = netrad)) 
  
  return(df)
}