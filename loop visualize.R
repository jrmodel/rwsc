for (i in 1:4){
  F0 <- ggplot(iris,aes_string("Species",a[i]))+
    geom_violin(aes(col=Species))
  pic <- paste0("F",i)
  assign(pic,F0)
}
(F1+F2)/(F3+F4)


for (i in 1:13){
  F0 <- ggplot() +
    geom_line(aes(alldata[i,]$data[[1]]$date, alldata[i,]$data[[1]]$latenth), color = "red") +
    geom_point(aes(alldata[i,]$data[[1]]$date,alldata[i,]$data[[1]]$le), size =0.5)+
    labs(x ="date", y = "Latent energy",tag = alldata[i,]$sitename) 
  
  pic <- paste0("F",i)
  assign(pic,F0)
}

ggpubr

ggarrange(sp,                                                 # First row with scatter plot
          ggarrange(bxp, dp, ncol = 2, labels = c("B", "C")), # Second row with box and dot plots
          nrow = 2, 
          labels = "A"                                        # Labels of the scatter plot
) 

ggarrange(out$gg,
          ou$gg)