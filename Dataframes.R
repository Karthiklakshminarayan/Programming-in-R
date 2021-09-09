#Data Frame.....
#Creating a data set by combining 4 variables of same length.
#Create a,b,c,d variables.
a<-c(10,20,30,40)
b<-c('apple','bannana','grapes','orange')
c<-c(TRUE,FALSE,TRUE,FALSE)
d<-c(2.5,8,10,7)
#Join the variables to create a data frame
df<-data.frame(a,b,c,d)
df
#We can see the column headers have the same name as variables.
#We can change column names with function names()
names(df)<-c('ID','Items','Store','Price')
df
#Print the structure
str(df)
#Note:By default, dataframe returns stringvariables as factors.
head(df)
head(df,n=3)#Top 3 rows
tail(df)#Bottom 6 rows
tail(df,n=2)#bottom 2 rows
View(df)#View data frame table.
class(df)
summary(df)
#Slicing the dataframe.
#We select the rows and columns to return into bracket preceded by the name of the dataframe
#Select row in column 2
df[1,2]
#select rows 1 to 2
df[1:2,]
#Select columns 1
df[,1]
#Select rows 1 to 3 and columns 3 to 4.
df[1:3,3:4]
#It is also possible to select the columns with their names.
#slice with columns name 
df[,c('ID','Store')]
#Append a column to data frame (use symbol $ to append a new variable)
#Create a new vector
quantity<-c(20,40,5,10)
df$quantity<-quantity
df
#Note:$ symbol is used to append/ add new column to dataframe(df)
#subsetting a dataframe based on some condition(we will use subset() function for this)
subset(df,subset=quantity>10)
#Note each column is said to be a variable and each row is said to be a record.
#Selecting a column of a data frame 
#Select column ID
df$ID
