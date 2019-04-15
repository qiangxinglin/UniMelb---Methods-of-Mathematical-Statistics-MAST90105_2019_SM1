p <- ggplot(data = data.frame(x= c(0,30)),aes(x=x)) +
  stat_function(fun=function(x)dgamma(shape=0.25,x,scale=4),aes(colour = "1")) + 
  stat_function(fun = function(x)dgamma(shape=1,x,scale=4), aes(colour = "2")) + 
  stat_function(fun = function(x)dgamma(shape=2,x,scale=4), aes(colour = "3")) + 
  stat_function(fun = function(x)dgamma(shape=3,x,scale=4), aes(colour = "4"))
newcols <- c("1"="red","2"="blue","3"="darkgreen","4"="purple")
p +scale_colour_manual(values = newcols,name = "",labels = c(expression("  " * alpha==0.25*"   "),
                                                             expression("  "*alpha==1*"  " ),
                                                             expression("  "*alpha==2*"  " ),
                                                             expression("  "*alpha==3*"  " ))) +
  theme(legend.position = "top",text=element_text(size=22),panel.background =element_rect(fill="white"), 
        axis.line = element_line(colour = "black") ) +
  ylim(0,0.25)+
  ylab("f(x)") +
  annotate("text",x=15,y=0.15, label="theta==4",parse=TRUE, size=8)+
  ggtitle("Gamma Probability Density Functions - Varying Shape")
