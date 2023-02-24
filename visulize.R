library(dplyr)
library(rsofun)

load("F:/rwsc/params.RDA")
load("F:/rwsc/driver.Rda")

sitenames <- df_drivers2$sitename
params_modl <- list()
for (s in 1 : length((sitenames))){
  p = list(
    kphio           = 0.09423773,
    soilm_par_a     = 0.33349283,
    soilm_par_b     = 1.45602286,
    tau_acclim_tempstress = 10,
    par_shape_tempstress  = 0.0,
    exp_et = params[[s]]$par[["exp_et"]],
    beta_et = params[[s]]$par[["beta_et"]],
    rwsc = params[[s]]$par[["rwsc"]]
  )
  params_modl[[s]]<-p

}


Visualize <- tibble(drivers = df_drivers2 |>
                  filter(sitename == sitenames[1]) |>
                  list(),
                  params2 = params_modl 
                                    )
                
for(s in 2:length(sitenames)){
  Visualize$drivers[[s]] <-df_drivers2[s,]
}

output_n <- apply(Visualize, 1, 
                function(x) runread_pmodel_f(x$drivers, x$params2))

save(output_n, file= "output.RDA")