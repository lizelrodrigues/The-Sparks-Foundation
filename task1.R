#GRIPMAY21: INTERNSHIP PROGRAM
#NAME: LIZEL RODRIGUES
#TASK1: PREDICTION USING SUPERVISED ML
#AIM: TO PREDICT THE PERCENTAGE OF A STUDENT BASED ON THE NO. OF STUDY HOURS.

#TO IMPORT THE DATA
Data=read.csv("http://bit.ly/w-data")
head (Data)

#Plotting the distribution
plot(Data$Hours,Data$Scores, main="Scatter Plot", xlab="Hours studied", ylab="Percentage scored")
cor(Data$Hours, Data$Scores)

#The value of correlation coefficient is 0.9761907
#Therefore we conclude that, the two variables (hours and scores of the student) are positively correlated. 

#to build the regression model
model=lm(Scores~Hours, data=Data)
model


#output using summary function
summary(model)

#plotting the regression line
abline(model, col="RED")

#to compare actual and predicted values 
Data$predicted =fitted(model)
Data$residual
Data

#to predict output for the given data 
p= data.frame (Hours=9.25)
predict(model,p)

#NOW, WE CONCLUDE THAT, THE PREDICTED VALUE OF THE PERCENTAGE SCORED BASED ON THE VALUE OF HOURS STUDIED IS  92.90985