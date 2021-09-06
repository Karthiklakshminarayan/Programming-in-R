#Matrix is a two dimensional array.
#We can create a matrix with the function matrix()
#MAtrix(data, nrow, ncol, byrow=False or True)
#Construct a matrix with 4 rows that contain the numbers upto 1 to 8and by row=True.
matrix_a<-matrix(1:8,byrow=TRUE,nrow=4)
matrix_a
#Print dimensions of the matrix
dim(matrix_a)
#Construct a matrix with 5 rows that contain the numbers upto 1 to 10 and by row=False.
matrix_b<-matrix(1:10,byrow=FALSE,nrow=5)
matrix_b
#Print dimensions of the matrix
dim(matrix_b)
#Construct a matrix with 6 rows that contain the numbers upto 1 to 18 and byrow not mentioned.
matrix_c<-matrix(1:18,nrow=6)
matrix_c
#print dimensions of the matrix
dim(matrix_c)
#Matrix object properties.
(mx=matrix(1:24,nrow=6))
class(mx)
typeof(mx)
length(mx)
dim(mx)
#Add a column to a matrix using cbind() command
#Concantenate c(1:4) to matrix_a
matrix_a1<-cbind(matrix_a,cbind(1:4))
matrix_a1
#check dimensions
dim(matrix_a1)
#Add a row to matrix with rbind() coommand
#Append to the matrix
matrix_a2<-rbind(matrix_a,(1:2))
matrix_a2
#check dimensions
dim(matrix_a2)
#slice a matrix
#We can select one or many elements from a matrix using the square brackets[]\
#this is where slicing comes into the picture
#Below cmd selects the elements at the first row and second column of a matrix.
matrix_a2[1,2]
#Below cmd results in a matrix with data on rows 1,2,3 and columns 1,2
matrix_a2[1:3,1:2]
#below cmd selects all elements of the first column
matrix_a2[,1]
#below cmd selects all elements of the first row
matrix_a2[1,]
#Matrix--
(m1=matrix(1:12,nrow=4))
#Add names of cols and rows in matrix
(colnames(m1)<-paste('c',1:3,sep=''))
(rownames(m1)<-paste('r',1:4,sep=''))
#Converesion : Vector to matrix
(m3=1:24)#vector
dim(m3)=c(6,4)
m3
#access elements 
(m2=matrix(1:12,]ncol=3,byrow=T))
m2
m2[1,] #first row
m2[c(1,3,4)]# 1st, 3rd and 4th row
m2[,1]
m2[c(1,2),c(2,3)]
m2[1]
m2[-2,-3]#Exclude 2nd row and 3rd column
m2[1:8]#Convert matrix to vector.
m2[m2>5]#Logical operation
#Modify the matrix
m2[2,2]
m2[2,2]=10
m2
#row and col wise summary, sums n average
m1
colSums(m1)#sum
rowSums(m1)
colMeans(m1)#Average
rowMeans(m1)
#Transpose
m1
t(m1)