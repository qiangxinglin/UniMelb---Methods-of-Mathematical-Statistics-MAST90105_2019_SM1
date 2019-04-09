x=seq(0,100,0.01)
y1=dgamma(x,shape=0.1,scale=5)
y2=dgamma(x,shape=1.1,scale=5)
y3=dgamma(x,shape=5,scale=5)
y4=dgamma(x,shape=10,scale=5)

plot(x,y1,type="l",col="red", lwd=2,ylim=c(0,0.25),yaxp=c(0,0.25,5),xlab="x",ylab="f(x)",main="Gamma Probability Density Functions - Varying Shape",cex.main=1)
lines(x,y2,col="blue",lwd=2)
lines(x,y3,col="green",lwd=2)
lines(x,y4,col="purple",lwd=2)
text(15,0.15,expression(theta==5),cex=1.5)

legend(70,0.25,legend=c(expression(alpha==0.1, alpha==1.1, alpha==5, alpha==10)),col=c(2,4,3,6),lwd=2)
