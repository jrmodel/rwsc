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
a <- ggplot() +
  geom_line(aes(alldata[7,]$data[[1]]$date, alldata[7,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[7,]$data[[1]]$date,alldata[7,]$data[[1]]$le), size =0.5)+
  labs(x ="date", y = "Latent energy",tag = alldata[7,]$sitename) 

b <- ggplot( ) +
  geom_line(aes(alldata[8,]$data[[1]]$date, alldata[8,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[8,]$data[[1]]$date,alldata[8,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[8,]$sitename) 

c <- ggplot( ) +
  geom_line(aes(alldata[9,]$data[[1]]$date, alldata[9,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[9,]$data[[1]]$date,alldata[9,]$data[[1]]$le), size =0.5)+
  labs(x ="date", y = "Latent energy", tag=alldata[9,]$sitename)  

d<- ggplot( ) +
  geom_line(aes(alldata[10,]$data[[1]]$date, alldata[10,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[10,]$data[[1]]$date,alldata[10,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[10,]$sitename)

e<- ggplot( ) +
  geom_line(aes(alldata[11,]$data[[1]]$date, alldata[11,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[11,]$data[[1]]$date,alldata[11,]$data[[1]]$le), size =0.5 )+
  labs(x ="date", y = "Latent energy", tag=alldata[11,]$sitename)

f<- ggplot( ) +
  geom_line(aes(alldata[12,]$data[[1]]$date, alldata[12,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[12,]$data[[1]]$date,alldata[12,]$data[[1]]$le), size = 0.5)+
  labs(x ="date", y = "Latent energy", tag=alldata[12,]$sitename)


g<- ggplot( ) +
  geom_line(aes(alldata[13,]$data[[1]]$date, alldata[13,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[13,]$data[[1]]$date,alldata[13,]$data[[1]]$le), size = 0.5)+
  labs(x ="date", y = "Latent energy", tag=alldata[13,]$sitename)
# 


print((p|q|r)/(s|t|u)/(a|b|c)/((d|e|f|g)))