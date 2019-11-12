M <- USArrests$Murder
M
mean(M)
median(M)
quantile(M)
length(M[M>=mean(M)])
summary(M)


X<-range(M)
X
y<-quantile(M)
y

density(M)
plot(density(M))
rnorm(10,mean = 0,sd=1)
x<-rnorm(100000,mean = 0,sd=1)
plot(density(x))

table(mtcars$cyl)
mtcars$cyl
x<-table(mtcars$cyl)

cyl <- mtcars$cyl
gear <- mtcars$gear
table(cyl,gear)

t<-table(cyl,gear)
addmargins(t,c(1,2))

as.data.frame(table(cyl,gear))

t<-table(cyl,gear)
prop.table(t,1)

aggregate(mtcars$wt,by=list(cyl,gear),mean)
aggregate(mtcars$wt,by=list(cyl=mtcars$cyl,gear=mtcars$gear),mean)

aggregate(cbind(wt,disp)~cyl+gear,data=mtcars,mean)

myfunction <- function(x){c(mean=mean(x),max=max(x),min=min(x))}
aggregate(mtcars$wt,by=list(cyl=mtcars$cyl,gear=mtcars$gear),myfunction)

by(mtcars$wt,mtcars[c("cyl","gear")],mean)

x<-cbind(mtcars$wt,mtcars$disp,mtcars$hp,mtcars$mpg)
apply(x,2,mean)
x
tapply(mtcars$wt,list(cyl=mtcars$cyl,gear=mtcars$gear),mean)

library(Hmisc)
describe(mtcars[c("wt","mpg")])


library(psych)
x<-describe(mtcars[c("wt","mpg","cyl","gear")])
x
x$min[1]