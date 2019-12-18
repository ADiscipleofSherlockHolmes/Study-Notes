# 向量
score <- c(90,77,82,85)
attributes(score)
names(score) <- c("A","C","B","B")
score
score[c("A","B","B","C")]

# 矩阵
x <- matrix(c(1:12),3,4,byrow=TRUE,dimnames=list(c("A","B","C"),c("COL1","COL2","COL3","COL4")))
x
x[1,2]
x[c(1,2),c(1,2)]
x[-1]
x[-1,]
x[,-1]
a<- c(1:4)
b<-c(5,8)
c<-c(9,12)
xyz1 <- rbind(a,b,c)
xyz1
xyz2 <- cbind(a,b,c)
xyz2
identical(xyz1,t(xyz2))
rownames(xyz1)
colnames(xyz1)
colnames(xyz1) <- c(LETTERS[1:4]) 
xyz1

# 数组
x <- c(1:10)
dim(x) <- c(2,5)
x
class(x)
is.matrix(x)
x1 <- array(c(1:10),dim=c(2,5,3)) # 按列存放，循环原则
x1
dim1 <- c("Row1","Row2","Row3","Row4","Row5")
dim2 <- c("Col1","Col2","Col3")
dim3 <- c("A1","A2")
x2 <- array(c(1:15),dim=c(5,3,2),dimnames=list(dim1,dim2,dim3))
x2

# 数据框
observation <- c(1:6)
gender <- c("M","M","F","F","F","F")
weight <- c(8.3,8.6,7.8,8.5,8.0,8.8)
baby <- data.frame(observation, gender, weight)
baby
baby[1]
baby[c("observation","gender")]
baby[c(1,3),]
baby$observation
class(baby$observation)
class(baby["observation"])
#> class(baby$observation)
#[1] "integer"
#> class(baby["observation"])
#[1] "data.frame"
summary(baby)
summary(baby$observation)
attach(baby)
detach(baby)


# 因子
status <- c("Poor","Improved","Excellent","Poor")
status
status1 <- factor(status)
status1
status2 <- factor(status, levels = c("Poor","Improved","Excellent"))
status2
#status3： 这就相当于是指定了顺序，任何在数据中出现而未在参数中出列举出的数据都将被设为缺失值
status3 <- factor(status, levels = c("Poor","Improved","Excellent"), ordered = TRUE) 
status3
patientID <- c(1,2,3,4)
age <- c(25,34,28,52)
diabetes <- c("Type1","Type2","Type1","Type1")
patientData <- data.frame(patientID, age, diabetes, status3)
patientData
str(patientData) # 数据信息
summary(patientData)

score <- c(95,80,68,75,83)
grade <- c("A","B","D","C","B")
Course <- c("TYPE1","TYPE2","TYPE2","TYPE2","TYPE1")
tapply(score, grade, mean) #以grade为标志进行分组
tapply(score, Course, mean) # 以Course为标志进行分组


# 列表
student <- c("John", "Peter")
subject <- c("Math","Reading","History","Physics","Ecnomics")
listOne <- list(subjectNames = subject, studentNames = student)
listOne
score <- matrix(c(95,80,68,75,83,80,77,78,90,95),nrow=5, ncol=2, dimnames=listOne)
score
x <- data.frame(score,gradeJohn=factor(c("A","B","D","C","B")),gradePeter=factor(c("B","C","B","C","C")))
x
listTwo <- list(title="THE EXAM RESULTS",listOne,x)
listTwo

# 时间序列
ts1 <- ts(1:10, 2010)
ts1
ts2 <- ts(1:36,frequency = 12, start = c(2010,6))
ts2
ts3 <- ts(matrix(rnorm(27),9,3),start = c(2010,1), frequency = 4)
ts3
ts4 <- ts(matrix(rnorm(27),9,3),start = c(2010,1), frequency = 4,names = c("A","B","C"))
ts4
