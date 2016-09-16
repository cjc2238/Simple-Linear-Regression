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
