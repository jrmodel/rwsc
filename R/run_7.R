p <- ggplot() +
  geom_line(aes(alldata[7,]$data[[1]]$date, alldata[7,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[7,]$data[[1]]$date,alldata[7,]$data[[1]]$le), size =0.5)+
  labs(x ="date", y = "Latent energy",tag = alldata[7,]$sitename) 

q <- ggplot( ) +
  geom_line(aes(alldata[8,]$data[[1]]$date, alldata[8,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[8,]$data[[1]]$date,alldata[8,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[8,]$sitename) 

r <- ggplot( ) +
  geom_line(aes(alldata[9,]$data[[1]]$date, alldata[9,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[9,]$data[[1]]$date,alldata[9,]$data[[1]]$le), size =0.5)+
  labs(x ="date", y = "Latent energy", tag=alldata[9,]$sitename)  

s<- ggplot( ) +
  geom_line(aes(alldata[10,]$data[[1]]$date, alldata[10,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[10,]$data[[1]]$date,alldata[10,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[10,]$sitename)

t<- ggplot( ) +
  geom_line(aes(alldata[11,]$data[[1]]$date, alldata[11,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[11,]$data[[1]]$date,alldata[11,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[11,]$sitename)

u<- ggplot( ) +
  geom_line(aes(alldata[12,]$data[[1]]$date, alldata[12,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[12,]$data[[1]]$date,alldata[12,]$data[[1]]$le), size = 0.5)+
  labs(x ="date", y = "Latent energy", tag=alldata[12,]$sitename)


k<- ggplot( ) +
  geom_line(aes(alldata[13,]$data[[1]]$date, alldata[13,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[13,]$data[[1]]$date,alldata[13,]$data[[1]]$le), size = 0.5)+
  labs(x ="date", y = "Latent energy", tag=alldata[13,]$sitename)
# 
# obs_9 = df_obs |> 
#    
#   group_by(sitename) |> 
#   nest()  

print((p|q)/(r|s)/(t|u)/(k))
