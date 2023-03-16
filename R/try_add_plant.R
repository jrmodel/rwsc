params_d <- tibble(
  sitename = sitenames[1],
  exp_et   = params_modl[[1]]$exp_et,
  beta_et  =params_modl[[1]]$beta_et,
  rwsc   = params_modl[[1]]$rwsc,
)

for(s in 2 : length(sitenames)){
  params_d <- params_d |>
    add_row(sitename = sitenames[s],
            exp_et   = params_modl[[s]]$exp_et,
            beta_et  =params_modl[[s]]$beta_et,
            rwsc   = params_modl[[s]]$rwsc)
}


params_s  <- tibble(
  sitename = sitename[1],
  exp_et   = params_d[1,]$exp_et,
  beta_et  =params_d[1,]$beta_et,
  rwsc   = params_d[1,]$rwsc,
  # whc = df_drivers2[1,]$site_info[[1]]$whc,
  koeppen_code = df_drivers2[1,]$site_info[[1]]$koeppen_code,
  igbp_land_use =df_drivers2[1,]$site_info[[1]]$igbp_land_use,
  plant_functional_type   = df_drivers2[1,]$site_info[[1]]$plant_functional_type
)

for(s in 2 : length(sitenames)){
  params_s <- params_s |>
    add_row(sitename = sitenames[s],
            exp_et   = params_d[s,]$exp_et,
            beta_et  =params_d[s,]$beta_et,
            rwsc   = params_d[s,]$rwsc,
            # whc = df_drivers2[s,]$site_info[[1]]$whc,
            koeppen_code = df_drivers2[s,]$site_info[[1]]$koeppen_code,
            igbp_land_use =df_drivers2[s,]$site_info[[1]]$igbp_land_use,
             plant_functional_type   = df_drivers2[s,]$site_info[[1]]$plant_functional_type)
}