a <- ggplot()+
  geom_point(aes(AI_new$sitename, AI_new$rwsc))+
  labs(x="", y= "Smax (mm)", tag= "(a)")+
  theme_grey(base_size =18)

b <- ggplot()+
  geom_point(aes(AI_new$sitename, AI_new$exp_et), color = "blue")+
  labs(x="", y= "γ", tag = "(b)")+
  theme_grey(base_size = 18)

c <- ggplot()+
  geom_point(aes(AI_new$sitename, AI_new$beta_et),  color = "red")+
  labs(x="Sitename", y= expression(β[0]), tag = "(c)", cex.lab = 5)+
  theme_grey(base_size = 18)

ggarrange(a, b, c, nrow=3, ncol=1)