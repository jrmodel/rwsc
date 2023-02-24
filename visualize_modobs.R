

a <- list()
for (i in 1:13){
  tmp <- alldata[i,]$data[[1]]
  out <- tmp |>
    rbeni::analyse_modobs2("latenth", "le")
  a <- append(a, list(out))
    
}
ggarrange(ggarrange(a[[1]]$gg,a[[2]]$gg, a[[3]]$gg, ncol =3,labels=c("AT-Neu", "AU-Das","DE-Hai"), label.x = 0.1, label.y= 0.85),
          ggarrange(a[[4]]$gg,a[[5]]$gg, a[[6]]$gg, ncol=3,labels=c("DE-Tha", "FR-LBr","FR-Pue"), label.x = 0.1, label.y= 0.85),
          ggarrange(a[[7]]$gg,a[[8]]$gg, a[[9]]$gg, ncol=3,labels=c("GF-Guy", "NL-Loo","US-Me2"),label.x = 0.1, label.y= 0.85),
          # ggarrange(a[[10]]$gg,a[[11]]$gg,ncol=2,labels=c("(j)", "(k)")),
          # ggarrange(a[[12]]$gg, a[[13]]$gg,ncol=2,labels=c("(l)","(m)")),
          nrow =3)

ggarrange(ggarrange(a[[10]]$gg,a[[11]]$gg, ncol =2,labels=c("US-NR1", "US-SRM"), label.x = 0.1, label.y= 0.85),
          ggarrange(a[[12]]$gg,a[[13]]$gg, ncol=2,labels=c("US-Ton", "US-Wkg"), label.x = 0.1, label.y= 0.85),
          nrow =2)




ggarrange(ggarrange(a[[1]]$gg,a[[2]]$gg, a[[3]]$gg, ncol =3,labels=c("(a)", "(b)","(c)")),
          ggarrange(a[[4]]$gg,a[[5]]$gg, a[[6]]$gg, ncol=3,labels=c("(d)", "(e)","(f)")),
          ggarrange(a[[7]]$gg,a[[8]]$gg, a[[9]]$gg, ncol=3,labels=c("(g)", "(h)","(i)")),
          # ggarrange(a[[10]]$gg,a[[11]]$gg,ncol=2,labels=c("(j)", "(k)")),
          # ggarrange(a[[12]]$gg, a[[13]]$gg,ncol=2,labels=c("(l)","(m)")),
          nrow =3)


ggarrange(sp,                                                 # First row with scatter plot
          ggarrange(bxp, dp, ncol = 2, labels = c("B", "C")), # Second row with box and dot plots
          nrow = 2, 
          labels = "A"                                        # Labels of the scatter plot
) 
 

for (i in 1:13){
   ggarrange(a[[1]]$gg, labels="a")
  
}




            