# When your target variable or dependent variable is numeric, and you only have one independant variable (IV)
# that you are using to predict, use linear regression.

# Read the dataset
df <- read.csv("dataset_simpleRegression.csv")
# Plot Roll and INC
plot(ROLL ~ INC, data = df)
#Calculate Pearsons R
cor(df$ROLL, df$INC)
# assign linear model of ROLL and INC to value m1
lm(formula = ROLL ~ INC, data = df)
# Get a more comprehensive summary of m1 by using the summary function
summary(m1)
# add line of intercept and slop
abline(m1, col="red", lty=2, lwd=3)
# make a prediction using our model
predict(m1, data.frame("INC" = 4000))
# loot at confidence interval with defualt of 95% confidence
predict(m1, data.frame("INC" = 4000), interval = "prediction")