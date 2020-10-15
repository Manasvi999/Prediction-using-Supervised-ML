attach(SupervisedML)
#Constructing the Model----
model <- lm(SupervisedML$Scores~SupervisedML$Hours)
summary(model) #significant at 0 level
               #confidence level is 100%
               #statistically significant, highly positive relationship
#Visually Verifying the Model----
plot(Scores~Hours, xlab= "Hours Studied", ylab = "Marks Scored",
     main= "Predicted Model of SupervisedML")
abline(model, col= 'blue') #following the same results of model summary
#Predicting Score with given Hours----
modelfit <- lm(Scores~ poly(Hours, 2, raw = TRUE))
predict(modelfit, data.frame(Hours= 9.25))
