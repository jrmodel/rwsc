

library(ggplot2)
library(patchwork)

output_t <- tibble(sitename = output_n[[1]]$sitename,
                   modelled_data = output_n[[1]]$data 
                   )

for(s in 2 : length(sitenames)){
  output_t <- output_t |>
    add_row(sitename = output_n[[s]]$sitename,
             modelled_data = output_n[[s]]$data 
    )
}

# m <- output_t[1,]$modelled_data[[1]]|>
#   select(date, latenth) |>
#   mutate(latenth = latenth/24/60/60)
# 
# obs_3[1,]$data[[1]] <- obs_3[1,]$data[[1]]|>
#   left_join(m,by="date")
# 
# left_join(m,  obs_3[1,]$data[[1]], by="date" )

alldata <- obs_3|>
  left_join(output_t, by ="sitename")

for(s in 1: length(sitenames)){
  m <- output_t[s,]$modelled_data[[1]]|>
     select(date, latenth)|>
     mutate(latenth = latenth/24/60/60)
  
  alldata[s,]$data[[1]] <- alldata[s,]$data[[1]]|>
    left_join(m,by="date")
} 


output_t <- tibble(sitename = output_n[[1]]$sitename,
                   modelled_data = output_n[[1]]$data 
)

for(s in 2 : length(sitenames)){
  output_t <- output_t |>
    add_row(sitename = output_n[[s]]$sitename,
            modelled_data = output_n[[s]]$data 
    )
}
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

p <- ggplot() +
  geom_line(aes(alldata[1,]$data[[1]]$date, alldata[1,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[1,]$data[[1]]$date,alldata[1,]$data[[1]]$le), size =0.5)+
  labs(x ="date", y = "Latent energy",tag = alldata[1,]$sitename) 

q <- ggplot( ) +
  geom_line(aes(alldata[2,]$data[[1]]$date, alldata[2,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[2,]$data[[1]]$date,alldata[2,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[2,]$sitename) 
  
r <- ggplot( ) +
  geom_line(aes(alldata[3,]$data[[1]]$date, alldata[3,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[3,]$data[[1]]$date,alldata[3,]$data[[1]]$le), size =0.5)+
  labs(x ="date", y = "Latent energy", tag=alldata[3,]$sitename)  

s<- ggplot( ) +
  geom_line(aes(alldata[4,]$data[[1]]$date, alldata[4,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[4,]$data[[1]]$date,alldata[4,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[4,]$sitename)

t<- ggplot( ) +
  geom_line(aes(alldata[5,]$data[[1]]$date, alldata[5,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[5,]$data[[1]]$date,alldata[5,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[5,]$sitename)

u<- ggplot( ) +
  geom_line(aes(alldata[6,]$data[[1]]$date, alldata[6,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[6,]$data[[1]]$date,alldata[6,]$data[[1]]$le), size = 0.5)+
  labs(x ="date", y = "Latent energy", tag=alldata[6,]$sitename)


# 
# obs_3 = df_obs |> 
#    
#   group_by(sitename) |> 
#   nest()  

print((p|q)/(r|s)/(t|u))

x <- alldata[1,]$data[[1]] %>% filter(month(ymd(alldata[1,]$data[[1]]$date)) %in% c(4:6))

p <- ggplot() +
       geom_line(aes(x$date, x$latenth), color = "red") +
       geom_point(aes(x$date,x$le), size =0.5)+
       labs(x ="date", y = "Latent energy",tag = alldata[1,]$sitename) 

print(p)


p <- ggplot() +
  geom_line(aes(ex13_mydata$date, ex13_mydata$latenth), color = "red",by = "2 month") +
  geom_point(aes(ex13_mydata$date,ex13_mydata$le), size =0.5)+
  labs(x ="date", y = "Latent energy",tag = alldata[1,]$sitename) 