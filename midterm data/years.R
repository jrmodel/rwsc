years <- tibble(
  sitename = sitenames[1],
  nyeartrend   = df_drivers2[1,]$params_siml[[1]]$nyeartrend,

)


for(s in 2 : length(sitenames)){
  years <- years |>
    add_row(sitename = sitenames[s],
            nyeartrend   = df_drivers2[s,]$params_siml[[1]]$nyeartrend,
            )
}
