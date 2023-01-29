load("F:/rwsc/driver.Rda")
load("F:/rwsc/obs.Rda")
load("F:/rwsc/settings.Rda")

sitenames <- df_drivers2$sitename
# Fill first row of nested input
input <- tibble(drivers = df_drivers2 |>
                  filter(sitename == sitenames[1]) |>
                  list(),
                obs = obs_3 |>
                  filter(sitename == sitenames[1]) |>
                  list(),
                settings = settings |>
                  list())
for(s in sitenames[-1]){
  input <- input |>
    add_row(drivers = df_drivers2 |>
              filter(sitename == s) |>
              list(),
            obs = obs_3 |>
              filter(sitename == s) |>
              list(),
            settings = settings |>
              list()
    )
}

params <- apply(input, 1, 
                function(x) calib_sofun(x$drivers, x$obs, x$settings))