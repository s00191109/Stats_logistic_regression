##Read the sample data
df <- read.csv('https://github.com/s00191109/Stats_logistic_regression/blob/master/final_sample.csv')
##Provide a brief summary
summary(df)
##Understand the distribution of headsets to problem types
xtabs(~ problem_type +headset_type ,data=df)
##run logistic regression based on dependent variable problem_type
logit <- glm(problem_type ~ node+headset_type+data_location,data=df,family="binomial")
##output the logistic regression results
summary(logit)
