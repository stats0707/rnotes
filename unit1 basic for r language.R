# unit 1 1.3 Data reading and processing

# reading various type of data
#matrix()函数定义矩阵，访问：A[i,j], row:A[i,], colunm:A[,j] 可以访问多行，多列
#也可通过行列名访问 A["ID','NAME']
#add,joint

cbind()
rbind()

a<-matrix(1:10,2,5)
b<-matrix(1:15,3,5)
c=rbind(a,b)

#获取行数，列数
nrow()
ncol()


#以向量形式录入，少量数据的情况
names<-c("abbie","bob","cindy","david")
stat<-c(68,23,45,67)
math<-c(45,67,89,90)
mark<-c(58,23,45,19)
mana<-c(72,34,67,14)
acco<-c(67,51,67,89)

Class1<-data.frame(姓名=names, 统计学=stat,数学=math,营销学=mark,会计=acco)


#.Rdata 数据类型，利用save函数，减少重复赋值，多个r对象可存储到一个r文件

study1.df<-data.frame(id=1:5,gender=c("m","m","f","f","f"),score=c(50,64,73,24,90))

# description for study.df
score_by_gender<-aggregate(score~gender,FUN=mean,data=study1.df)

#hopethesis test for study.df
study1.htest<-t.test(score~gender,data=study1.df)

#save to rdata
save(study1.df,score_by_gender,study1.htest,file="/Users/tianshuzhang/Documents/r/study1.Rdata")


#read .Rdata
load()

read.csv()
read.xlsx()
library(foreign) read.spss() 

##data processing

glimpse()
View()
attach() #加载
detach() #移除
order() #排序

#help
?mean or help(mean)






  