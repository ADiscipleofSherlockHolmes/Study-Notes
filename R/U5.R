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

# 用points()函数向图形中添加数据点

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

# 用axis()函数绘制坐标轴

par(mfrow=c(2,2))
plot(1:10,xlab="x",ylab="y",main="Default")
plot(1:10,xaxt="n",xlab="x",ylab="y",main="at=1:10")
axis(side=1,at=1:10)
plot(1:10,xaxt="n",xlab="x",ylab="y",main="at=1;10,labels=LETTERS[1;10],\nline=1")
axis(side=1,at=1:10,labels=LETTERS[1:10],line=1)
plot(1:10,xaxt="n",xlab="x",ylab="y",main="at=1:10,lables=LETTERS[1:10],\nline=1,hadj=0,font=3")
axis(side=1,at=1:10,labels=LETTERS[1:10],line=1,hadj=0,font=3)

# 用grid()函数向图形中添加网格线
x<-1:20
plot(x,x^(1/3),type="n",ylim=c(0,3))
grid(4,4)
points(x^(1/3),type="b",pch=16,col="red")

# 用rect()函数绘制矩形
attach(longley)
plot(Year,Unemployed,type="n",xaxt="n")
axis(side=1,at=Year)
par("usr")
rect(1949,175,1953,492,col="gray",border = NA)
points(Year,Unemployed,type="l",lwd=2)
detach(longley)

attach(longley)
plot(Year,Unemployed,type="n",xaxt="n")
axis(side=1,at=Year)
r<-par("usr")
rect(r[1],r[3],r[2],r[4],col="gray90")
points(Year,Unemployed,type="l",lwd=2)
box("figure")
detach(longley)


# 用ploygon()函数添加多边形
plot(1:10,type="n",ann=FALSE)
grid()
x1<-c(2,4,3)
y1<-c(2,2,4)
polygon(x1,y1,col="gray",lwd=2)

x2<-c(6,10,10,6)
y2<-c(2,2,4,4)
polygon(x2,y2,density = 5,col="gray",lwd=2,border="black")

x3<-seq(1,4,0.5)
y3<-c(6,10,6,10,6,10,6)
polygon(x3,y3,density = 10,col="gray",angle =c(45,-45),border = "black",lwd=2,lty=c(1,2))

x4<-seq(6,9,0.5)
y4<-c(6,10,6,NA,6,10,6)
polygon(x4,y4,density = 10,col="gray",angle = c(45,-45),border = "black",lwd=2,lty=c(1,2))

set.seed(400)
y<-c(0,rnorm(20),0)
x<-0:21
plot(x,y,type="n")
polygon(x,y,col="gray")
z<-par("usr")
rect(z[1],z[3],z[2],0,col="white")
lines(x,y)
points(x,y,pch=16)
grid()
abline(h=0)

x<-seq(-5,5,by=0.005)
y<-dnorm(x,0,1.75)
plot(x,y,type="n",ylim=c(0,0.25),ylab="Density",main="Normal Distribution(mean=0,sd=1.75)")
region.x<-x[x<=-2]
region.y<-y[y<=-2]
polygon.x<-c(region.x[1],region.x,tail(region.x,1))
polygon.y<-c(0,region.y,0)
polygon(polygon.x,polygon.y,col="red",border=NA)
line(x,y,lwd=3)
abline(h=0)