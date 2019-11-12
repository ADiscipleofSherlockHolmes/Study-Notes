# 绘制三维信息图
contour(volcano,nlevels = 8, method = "flattest", lwd = 2,labcex = 0.8, vfont = c("sans serif","italic"),col = "blue")

attach(mtcars)
library(scatterplot3d)
scatterplot3d(wt,hp,mpg,pch=20,highlight.3d=TRUE,type="h",main="3d Scat-terplot")
detach(mtcars)

attach(mtcars)
library(rgl)
plot3d(wt,hp,mpg,type="s",size=1.5,col="blue")
detach(mtcars)

library(Rcmdr)
attach(mtcars)
scatter3d(wt,hp,mpg,point.col = "blue",surface = TRUE,
          surface.col = "grey",surface.alpha = 0.25,grid = TRUE,
          grid.lines = 20,axis.scales = TRUE, axis.col = c("black","blue","black"))
detach(mtcars)

attach(mtcars)
symbols(wt,hp,circles = mpg,inches = 0.3,fg = "white",bg = "lightgrey", 
        xlab = "weight(1b/1000)",ylab = "Grosshorsepower")
text(wt,hp,rownames(mtcars),cex = 0.6)
detach(mtcars)

attach(mtcars)
n<-mtcars[mtcars$gear==5,]
symbols(n$wt,n$hp,thermometers = cbind(0.5,1,n$mpg/50),inches = 0.8,xlab = "Weight(1b/1000)",ylab = "Gross horsepower")
text(n$wt,n$hp+15,rownames(n),cex = 1)
detach(mtcars)

x<-y<-seq(0,1,length=5)
str(volcano)
x<-seq(0,1,length=87)
y<-seq(0,1,length=61)
persp(x,y,volcano,theta = 30,phi=30,expand=0.5)


x<-seq(0,1,length=87)
y<-seq(0,1,length=61)
image(x,y,volcano,col=gray((20:50)/50))


max(volcano)      
min(volcano)
contour(x,y,volcano,levels = seq(90,200,by=5),add=TRUE,col="red")


filled.contour(volcano,color=terrain.colors,xaxs="r",asp=1,plot.title=title(main=list("Maunga Whau Volcano",font=3,cex=1.8, col="blue"),xlab="x: grid lines running east to west",ylab="y: grid lines running south to north"), key.title=title(main="Legend",sub="Height \n in meters",line=1.5))
