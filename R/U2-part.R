#读取数据

data <- read.table("E:/Study_Files/R File/scandata.txt",header=FALSE,sep=" ",stringsAsFactors=FALSE)
str(data)
class(data)
data[["V1"]]

# 数据输出

names <- c("Peter","Marry","John")
age <- c(20,22,19)
weight <- c(65,50,60)
wt <- data.frame(names=names,age=age,weight=weight)
wt
write.table(wt,"E:/Study_Files/R File/wt.txt",quote=FALSE,col.names=NA)
write.csv(wt,"E:/Study_Files/R File/wt.csv",row.names = TRUE,quote = FALSE)

sink("E:/Study_Files/R File/sunk.txt")
wt
str(wt)
sink()

# 数据管理
x <- seq(1,100,2)
x
x[10]
x[1:10]
even <- seq(2,length(x),2)
even
length(even)
x[c(1:10,20,40:45)]
x[-c(1:5)]
x>81
x[x>81]
which(x>81) # 返回的是被提取元素的索引号


x <- matrix(c(1:20),4,5)
x
x[2,]
x[,2]
is.vector(x[2,])
x[2,,drop=FALSE]
class(x[2,,drop=FALSE])
x[-2,-2]
x[,c(1,2)]

x <- array(c(1:20),dim=c(5,2,3))
x
x[c(1,2),c(1,2),c(1,2)]


names <- c("TOM","PETER","ALICE")
score <- c(80,90,92)
excellent <- c(FALSE,TRUE,TRUE)
x<- data.frame(names=names,score=score,excellent=excellent)
x[c("score","excellent")]
x[2]
x[[2]]
x$names
str(x)
x<-list(vectorA=c(1:5),matrixB=matrix(1:10,2,5),dataframeC=data.frame(scores=c(80,90),names=c("Tom","Jerry")))
x
x["dataframeC"]
x$dataframeC
x[["dataframeC"]]["scores"]
x[["matrixB"]]
x[["matrixB"]][1,2]
colnames(mtcars)
subset(mtcars,gear>=5)
subset(mtcars,gear>=5&cyl>6,select=c("gear","cyl","hp","wt"))
sort(mtcars$wt)
x <- c("six","ten","three","five","nine")
sort(x)
sort(x,decreasing=TRUE)
y<-c("six",NA,"three","one","eight")
sort(y)
sort(y,na.last=TRUE)
sort(y,na.last=FALSE)
result <- sort(x,index.return=TRUE)
result
x[result$ix] == sort(x)
#> x[result$ix] == sort(x)
#[1] TRUE TRUE TRUE TRUE TRUE
order(x) == result$ix
# [1] TRUE TRUE TRUE TRUE TRUE

d1 <- data.frame(name=c("A","B","C"),math=c(90,87,64),english=c(93,89,87))
d1
d2 <- data.frame(name=c("A","B","C"),chinese=c(80,83,89),history=c(75,74,90))
d2
merge(d1,d2)

d1 <- data.frame(name=c("A","B","C","D"),class=1:4,math=c(90,87,67,89),english=c(93,89,89,67))
d1
d2 <- data.frame(name=c("A","B","C","E"),class=2:5,history=c(90,87,67,89),chinese=c(93,89,89,67))
d2
merge(d1,d2)
merge(d1,d2,all=TRUE)
merge(d1,d2,by="name",all=FALSE,suffixes=c(".d1",".d2"))
merge(d1,d2,by="name",all.x=TRUE,suffixes=c(".d1",".d2"))
merge(d1,d2,by="name",all.y=TRUE,suffixes=c(".d1",".d2"))
merge(d1,d2,by="name",all=FALSE,suffixes=c(".d1",".d2"),incomparables = "A")

# 日期数据处理
data1 <- 2010/10/10
data1
data2 <- 2010-10-10
data2
x <- "2020-10-10"
x <- as.Date(x)
class(x) #"Date"
mode(x)# "numeric"
date()
Sys.Date()
Sys.time()
quarters(x) # "Q4"
x <- as.Date(c("2001-10-09","2011-10-13"))
y <- as.Date(c("2012-10-12","2034-07-07"))
difftime(x,y)
difftime(x,y,units="hours")
as.Date(1:10,origin="2010-10-09")
#[1] "2010-10-10" "2010-10-11" "2010-10-12" "2010-10-13" "2010-10-14"
#[6] "2010-10-15" "2010-10-16" "2010-10-17" "2010-10-18" "2010-10-19"
delt <- seq(from=as.Date("2019-01-10"),to=as.Date("2019-08-12"),by="1 day")
class(delt)
delt
difftime(as.Date("2019-01-10"),as.Date("2019-08-12"),units="days")# 214 + 1
x <- as.Date("2019-08-12")
format(x,"%Y %B %d")
