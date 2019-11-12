x<-1:10
x
y<-x^2
y
plot(x,y,main='Generic X-Y Plotting',type='b',lty=3,pch=1,cex=2,lwd=3)

women
plot(women)

windows()
x11()

windows(); x11()
dev.list()
plot(sin)
dev.set(4)
plot(cos)

dev.cur()
dev.list()
dev.off()
dev.next()
dev.prev()
dev.new()
graphics.off()

plot(women,type="b",lty="dashed",pch=15)

x<-seq(0,2*pi,0.1)
plot(x,sin(x),type="p",pch=20)
x
legend(x=5,y=0.5,legend = "sin(x)",pch=20)

mat <- matrix(1:4,2,2)
mat
x <- layout(mat)
x
layout.show(x)
y<-seq(0,2*pi,0.1)
plot(y,sin(y))
plot(y,cos(y))
plot(y,y^2)
plot(y,y^(1/2))

mat<-matrix(c(1,1,2,3),2,2)
mat
layout(mat)
layout.show(3)
y<-seq(0,2*pi,0.1)
y
plot(y,sin(y))
plot(y,cos(y))
plot(y,y^2)

mat<-matrix(1:4,2,2)
mat
x<-layout(mat,widths=c(1,2),heights = c(2,1)) #在宽度上是1:2，在高度上是2:1
x
layout.show(4)

par("col")

opar<-par(no.readonly = TRUE)
par(opar)

par(mfrow=c(2,2))
plot(1:10,type="n")
x<-c(1,3,5,7,9)
y<-c(2,4,6,8,10)
points(x,y,type="b",pch=3)
plot(1:10,type="n")
points(x,y,pch="@")
plot(1:10,type="n")
points(c(4,6,8),c(5,5,5),pch=21,cex=5,bg="yellow",lwd=3)
plot(1:10,type="n")
points(c(4,6,8),c(5,5,5),pch=c(21,22,23),col=c("red","black","green"),cex=5,bg="yellow",lwd=3)
