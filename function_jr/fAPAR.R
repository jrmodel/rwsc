library(ggpubr)

p <- ggplot() +
  geom_line(aes(alldata[13,]$data[[1]]$date, alldata[13,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[13,]$data[[1]]$date,alldata[13,]$data[[1]]$le), size =0.5)+
  labs(x ="", y =  bquote('Latent energy '(W~m^-2)),tag = "(c)") +
  theme_grey(base_size = 20)


q <- ggplot() +
  geom_line(aes(df_drivers2$forcing[[13]]$date, df_drivers2$forcing[[13]]$fapar), color = "red")+
  labs(x = "Date", y = "fARAR" ,tag = sitenames[13])+
  theme_grey(base_size = 20)


ggarrange(p, q, ncol = 1, nrow=2, align = "v")


t <- ggplot() +
  geom_line(aes(alldata[12,]$data[[1]]$date, alldata[12,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[12,]$data[[1]]$date,alldata[12,]$data[[1]]$le), size =0.5)+
  labs(x ="", y =  bquote('Latent energy '(W~m^-2)),tag = "(b)") +
  theme_grey(base_size = 20)


s <- ggplot() +
  geom_line(aes(df_drivers2$forcing[[12]]$date, df_drivers2$forcing[[12]]$fapar), color = "red")+
  labs(x = "Date", y = "fARAR" ,tag = sitenames[12])+
  theme_grey(base_size = 20)


ggarrange(t, s, ncol = 1, nrow=2, align = "v")


a <- ggplot() +
  geom_line(aes(alldata[11,]$data[[1]]$date, alldata[11,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[11,]$data[[1]]$date,alldata[11,]$data[[1]]$le), size =0.5)+
  labs(x ="", y =  bquote('Latent energy '(W~m^-2)),tag = "(a)") +
  theme_grey(base_size = 20)


b <- ggplot() +
  geom_line(aes(df_drivers2$forcing[[11]]$date, df_drivers2$forcing[[11]]$fapar), color = "red")+
  labs(x = "Date", y = "fARAR" ,tag = sitenames[11])+
  theme_grey(base_size = 20)


ggarrange(a, b, ncol = 1, nrow=2, align = "v")



c <- ggplot() +
  geom_line(aes(alldata[1,]$data[[1]]$date, alldata[1,]$data[[1]]$latenth), color = "red") +
  geom_point(aes(alldata[1,]$data[[1]]$date,alldata[1,]$data[[1]]$le), size =0.5)+
  labs(x ="Date", y =  bquote('Latent energy '(W~m^-2)),tag = sitenames[1]) +
  theme_grey(base_size = 20)


d <- ggplot() +
  geom_line(aes(df_drivers2$forcing[[1]]$date, df_drivers2$forcing[[1]]$fapar), color = "red")+
  labs(x = "Date", y = "fARAR" ,tag = sitenames[1])+
  theme_grey(base_size = 20)


ggarrange(c, d, ncol = 1, nrow=2, align = "v")