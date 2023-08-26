#specific for data structure

#基本类型：继承c语言类型，数值（numeric）、字符串（character）、逻辑型（logical）
##numeric：integer double（浮点） 双精度

a_integer<-1
is.integer(a_integer) #jugde the data type
as.integer() #transfer to integer
is.double()


#character:标识 " "
is.character()
is.numeric()
as.numeric() #长得像数据类型的字符串转换为数值型
paste("hello_world","123",sep="_")  #指定间隔符
#result:"hello_world_123"
substr("hello_world",start=2,stop=5) #字符串取值
#result: "ello"


#logical Boolean 逻辑型 内置变量
vari<-TRUE
is.logical(vari)

### multi-dimentional data structure
#vector，matrix，array，dataframe(行列有含义，行为样本，列为属性），list（mixed types）

#vector
# c() 向量 
x<-c(2,3,7,1,8,9,20)

#vector 取值
length(x)
x[2]

#vector替换 取多少给多少 善用length
x[3]<-87
x[c(1,4)]<-c(0,9)

#use boolean 
x[c(TRUE,FALSE,TRUE,FALSE)]<-c(5,8)

#多个向量组成一个矩阵 matrix 
rbind() 
cbind() #从行或者列维度合并向量

#matrix operation 需要利用一维数据生成，替换：拿多少还多少
matrix1<-matrix(c(1:50),nrow=5)
matrix2<-matrix(c(1:50),nrow=5,byrow=TRUE) # vector排列方式变化

#计算
matrix2*2
matrix1*matrix2

sum(matrix1)
apply(matrix2,1,sum) #apply() 对行列进行操作


#dataframe 构建函数 data.frame 接受等长的向量，参数的名字将会转换为列名
name<-c("bob","alice","sam","fred")
score<-c(34,72,67,98)
class<-c(1,2,2,1)
student_score<-data.frame(name=name,
                          score=score,
                           class=class)

#与matrix的区别：m需要数据类型全都一致，d需要每一列的数据类型一致
#data.frame取值 利用行列名
rownames(student_score)<-student_score[,1]
student_score_ba<-student_score[c("bob","alice"),]
student_name<-student_score$name #取列

#which: bealoon to numeric
which(c(TRUE,FALSE,TRUE,FALSE)) #直接取值或镶嵌在向量及dataframe中的数据
test_frame<-student_score[c(1,3,4),]
#等价于
test_frame2<-student_score[which(c(TRUE,FALSE,TRUE,TRUE)),]

#%in% 判断character

#行列名的替换 rownames/colnames 实质是向量的取值和替换问题
rownames(student_score)<-c('a','b','c','d')

#list as special vector
list1<-list(1,2,3,4,5)
list1[1] 
list1[c(2,4)]

list2<-list(c(1:3),
            c(2,2),
            "hello",
            matrix(c(1:100),nrow=10),
            data.frame(name=c(1:100),height=c(1:100)),
            list(1,23,6,8,90))

length(list2)


t.test_result=t.test(c(1:20),c(10:15))

is.list(t.test_result)
names(list2)<-c("vec1",'vec2','vec3','vec4','vec5','vec6')
t.test_result$p.value

