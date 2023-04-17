params_modl <- list(
  kphio           = 0.09423773,
  soilm_par_a     = 0.33349283,
  soilm_par_b     = 1.45602286,
  tau_acclim_tempstress = 10,
  par_shape_tempstress  = 0.0,
  exp_et = 0.39,
  beta_et = 0.41,
  rwsc = 20
)



output <- runread_pmodel_f(
  df_drivers2 |> 
    filter(sitename == "NL-Loo"),
  par = params_modl
)



tmp <- df_obs |> 
  filter(sitename == "NL-Loo") |> 
  left_join(
    output$data[[1]],
    by = "date"
  ) |> 
  mutate(latenth = latenth / (24 * 60 * 60) ) |> 
  left_join(
    df_fluxnet |> 
      filter(sitename == "NL-Loo") |> 
      unnest(data) |> 
      select(date, starts_with("SWC_")),
    by = c("sitename", "date")
  )

tmp |> 
  ggplot() +
  geom_line(aes(date, latenth), color = "red") +
  geom_point(aes(date, LE_F_MDS))


out <- tmp |>
  rbeni::analyse_modobs2("latenth", "LE_F_MDS")
out$gg


tmp |> 
  ggplot() +
  geom_line(aes(date, wscal), color = "royalblue") +
  geom_line(aes(date, SWC_F_MDS_1), color = "grey70") +
  geom_hline(yintercept = 1, linetype = "dotted") +
  ylim(0, 1.2)