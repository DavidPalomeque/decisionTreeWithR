# DECISION TREE ALGORITHM WITH R

library(rpart)
library(rpart.plot)

df <- read.table("fitnessAppLog.csv" , sep = "," , header = T)
head(df)

model <- rpart(PayOrNot~Incomes+State , data = df)
model

rpart.plot(model , extra = 4)
