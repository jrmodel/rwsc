p <- ggplot() +
  geom_line(aes(alldata[1,]$data[[1]]$date, alldata[1,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[1,]$data[[1]]$date,alldata[1,]$data[[1]]$le), size =0.5)+
  labs(x ="Date", y =  bquote('Latent energy '(W~m^-2)),tag = alldata[1,]$sitename) +
   theme_grey(base_size = 20)

q <- ggplot( ) +
  geom_line(aes(alldata[2,]$data[[1]]$date, alldata[2,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[2,]$data[[1]]$date,alldata[2,]$data[[1]]$le), size =0.5 )+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[2,]$sitename) +
  theme_grey(base_size = 20)

r <- ggplot( ) +
  geom_line(aes(alldata[3,]$data[[1]]$date, alldata[3,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[3,]$data[[1]]$date,alldata[3,]$data[[1]]$le), size =0.5)+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[3,]$sitename)+
  theme_grey(base_size = 20)

s<- ggplot( ) +
  geom_line(aes(alldata[4,]$data[[1]]$date, alldata[4,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[4,]$data[[1]]$date,alldata[4,]$data[[1]]$le), size =0.5 )+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[4,]$sitename)+
  theme_grey(base_size = 20)

t<- ggplot( ) +
  geom_line(aes(alldata[5,]$data[[1]]$date, alldata[5,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[5,]$data[[1]]$date,alldata[5,]$data[[1]]$le), size =0.5 )+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[5,]$sitename)+
  theme_grey(base_size = 20)

u<- ggplot( ) +
  geom_line(aes(alldata[6,]$data[[1]]$date, alldata[6,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[6,]$data[[1]]$date,alldata[6,]$data[[1]]$le), size = 0.5)+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[6,]$sitename)+
  theme_grey(base_size = 20)

a <- ggplot() +
  geom_line(aes(alldata[7,]$data[[1]]$date, alldata[7,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[7,]$data[[1]]$date,alldata[7,]$data[[1]]$le), size =0.5)+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)),tag = alldata[7,]$sitename) +
  theme_grey(base_size = 20)

b <- ggplot( ) +
  geom_line(aes(alldata[8,]$data[[1]]$date, alldata[8,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[8,]$data[[1]]$date,alldata[8,]$data[[1]]$le), size =0.5 )+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[8,]$sitename)  +
  theme_grey(base_size = 20)

c <- ggplot( ) +
  geom_line(aes(alldata[9,]$data[[1]]$date, alldata[9,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[9,]$data[[1]]$date,alldata[9,]$data[[1]]$le), size =0.5)+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[9,]$sitename) +
  theme_grey(base_size = 20)

d<- ggplot( ) +
  geom_line(aes(alldata[10,]$data[[1]]$date, alldata[10,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[10,]$data[[1]]$date,alldata[10,]$data[[1]]$le), size =0.5 )+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[10,]$sitename)+
  theme_grey(base_size = 20)

e<- ggplot( ) +
  geom_line(aes(alldata[11,]$data[[1]]$date, alldata[11,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[11,]$data[[1]]$date,alldata[11,]$data[[1]]$le), size =0.5 )+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[11,]$sitename)+
  theme_grey(base_size = 20)

f<- ggplot( ) +
  geom_line(aes(alldata[12,]$data[[1]]$date, alldata[12,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[12,]$data[[1]]$date,alldata[12,]$data[[1]]$le), size = 0.5)+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[12,]$sitename)+
  theme_grey(base_size = 20)


g<- ggplot( ) +
  geom_line(aes(alldata[13,]$data[[1]]$date, alldata[13,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[13,]$data[[1]]$date,alldata[13,]$data[[1]]$le), size = 0.5)+
  labs(x ="Date",y =  bquote('Latent energy '(W~m^-2)), tag=alldata[13,]$sitename)+
  theme_grey(base_size = 20)
# 
print((p|q)/(r|s))
print((t|u)/(a|b))

print((c|d)/(e|f))
print((g|g)/(g|g))

print((p|q|r)/(s|t|u)/(a|b|c)/((d|e|f|g)))