## LSE Data Analytics Online Career Accelerator 
# DA301:  Advanced Analytics for Organisational Impact

###############################################################################

# Assignment 5 scenario
## Turtle Games’s sales department has historically preferred to use R when performing 
## sales analyses due to existing workflow systems. As you’re able to perform data analysis 
## in R, you will perform exploratory data analysis and present your findings by utilising 
## basic statistics and plots. You'll explore and prepare the data set to analyse sales per 
## product. The sales department is hoping to use the findings of this exploratory analysis 
## to inform changes and improvements in the team. (Note that you will use basic summary 
## statistics in Module 5 and will continue to go into more detail with descriptive 
## statistics in Module 6.)

################################################################################

## Assignment 5 objective
## Load and wrangle the data. Use summary statistics and groupings if required to sense-check
## and gain insights into the data. Make sure to use different visualisations such as scatterplots, 
## histograms, and boxplots to learn more about the data set. Explore the data and comment on the 
## insights gained from your exploratory data analysis. For example, outliers, missing values, 
## and distribution of data. Also make sure to comment on initial patterns and distributions or 
## behaviour that may be of interest to the business.

################################################################################

# Module 5 assignment: Load, clean and wrangle data using R

## It is strongly advised that you use the cleaned version of the data set that you created and 
##  saved in the Python section of the course. Should you choose to redo the data cleaning in R, 
##  make sure to apply the same transformations as you will have to potentially compare the results.
##  (Note: Manual steps included dropping and renaming the columns as per the instructions in module 1.
##  Drop ‘language’ and ‘platform’ and rename ‘remuneration’ and ‘spending_score’) 

## 1. Open your RStudio and start setting up your R environment. 
## 2. Open a new R script and import the turtle_review.csv data file, which you can download from 
##      Assignment: Predicting future outcomes. (Note: You can use the clean version of the data 
##      you saved as csv in module 1, or, can manually drop and rename the columns as per the instructions 
##      in module 1. Drop ‘language’ and ‘platform’ and rename ‘remuneration’ and ‘spending_score’) 
## 3. Import all the required libraries for the analysis and view the data. 
## 4. Load and explore the data.
##    - View the head the data.
##    - Create a summary of the new data frame.
## 5. Perform exploratory data analysis by creating tables and visualisations to better understand 
##      groupings and different perspectives into customer behaviour and specifically how loyalty 
##      points are accumulated. Example questions could include:
##    - Can you comment on distributions, patterns or outliers based on the visual exploration of the data?
##    - Are there any insights based on the basic observations that may require further investigation?
##    - Are there any groupings that may be useful in gaining deeper insights into customer behaviour?
##    - Are there any specific patterns that you want to investigate
## 6. Create
##    - Create scatterplots, histograms, and boxplots to visually explore the loyalty_points data.
##    - Select appropriate visualisations to communicate relevant findings and insights to the business.
## 7. Note your observations and recommendations to the technical and business users.

###############################################################################

# Your code here.

# Import all required libraries.
library(tidyverse)
library(ggplot2)
library(skimr)

# Setting work directory.
setwd("C:/Users/Emmanuel/Documents/LSE_Course_3_assignment_files")

# Load data as a data frame.
turtle_reviews <- read.csv("turtle_reviews.csv",
                           header = TRUE)

# View the top of the data frame.
head(turtle_reviews)

# View the dimensions
dim(turtle_reviews)

# To search for missing values in a data set.
turtle_reviews[is.na(turtle_reviews)]

# To search for missing values in a specific column of a data set.
sum(is.na(turtle_reviews$size))

# View the columns names
colnames(turtle_reviews)

# Drop the unnecessary columns.
turtle_reviews <- subset(turtle_reviews,
                         select = -c(language,
                                     platform, review, summary))

# Rename the columns, for better understanding.
turtle_reviews <- turtle_reviews %>%
  rename(annual_income_k = remuneration..k..,
         spending_score = spending_score..1.100.,
  )

# ============================================================================
# EXPLORATORY DATA VISUALIZATION
# ============================================================================


# Sense check the data frame.
view(turtle_reviews)

# Create a summary of the database.
summary(turtle_reviews)

# The "product" column is being being presented as an integer.
# Convert "product" into a categorical factor.
turtle_reviews <- mutate(turtle_reviews,
                         product = as.factor(product))

# Detailed overview.
skim(turtle_reviews)
# Skim shows all the variable bar "spending_score" are heaviliy skewed.

# Determine the structure.
str(turtle_reviews)

# Examine a variable (gender) through a visualisation.
qplot(gender, data = turtle_reviews)

# Examine a variable (education) through a visualisation.
qplot(education, data = turtle_reviews)


# Examine two variables (age and annual_income_k) through a visualisation.
qplot(age, annual_income_k, data = turtle_reviews)


# Visualisation for Loyalty Points
# Histogram of Loyalty Points
ggplot(turtle_reviews, aes(x = loyalty_points)) +
  geom_histogram(binwidth = 500, fill = "blue", color = "black") +
  geom_density(fill = 'red', bw = 1)+
  labs(title = "Distribution of Loyalty Points",
       x = "Loyalty Points",
       y = "Frequency")+
  theme_minimal()

# Boxplot of Loyalty Points
ggplot(turtle_reviews, aes(y = loyalty_points)) +
  geom_boxplot() +
  labs(title = "Boxplot of Loyalty Points",
       y = "Loyalty Points")+
  theme_minimal()
# Both the boxplot and histogram confirm that "loyalty_points" are heavily right tailed

# 1.1 Relationship between Spending Score and Loyalty Points
# Scatter plot: Spending score vs Loyalty Points (linear).
ggplot(turtle_reviews, aes(x = spending_score, y = loyalty_points)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "green", se = F) +
  labs(title = "Spending vs Loyalty Points (linear)",
       x = "Spending Score",
       y = "Loyalty Points")+
  theme_minimal()

# Scatter plot: Spending score vs Loyalty Points.(non-linear).
ggplot(turtle_reviews, aes(x = spending_score, y = loyalty_points)) +
  geom_point(alpha = 0.6) +
  geom_smooth(color = "green") +
  labs(title = "Spending vs Loyalty Points (non-linear)",
       x = "Spending Score",
       y = "Loyalty Points")+
  theme_minimal()

# 1.2 Income Analysis
# Scatter plot: Annual income vs Loyalty Points (linear).
ggplot(turtle_reviews, aes(x = annual_income_k, y = loyalty_points)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Income vs Loyalty Points (linear)",
       x = "Income",
       y = "Loyalty Points")+
  theme_minimal()

# ============================================================================
# DEMOGRAPHIC ANALYSIS
# ============================================================================

# 2.1 Distribution of Loyalty Points

# Scatter plot: Income vs Loyalty Points (non-linear).
ggplot(turtle_reviews, aes(x = annual_income_k, y = loyalty_points)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Income vs Loyalty Points (non-linear)",
       x = "Income",
       y = "Loyalty Points")+
  theme_minimal()


# Histogram of Loyalty points with density
ggplot(turtle_reviews, aes(x = loyalty_points)) +
  geom_histogram(aes(y = ..density..), binwidth = 300, 
                 fill = "grey", color = "black", alpha = 0.5) +
  geom_density(bw = 15, color = "orange", size = 0.5) +
  labs(title = "Distribution of Loyalty Points",
       x = "Loyalty Points",
       y = "Density") +
  theme_minimal()

# Comparing gender with education and add a title.
ggplot(turtle_reviews, aes(x=gender, fill=education)) + 
  geom_bar(position='dodge') +
  ggtitle("Customer education level by gender status")


# Proportion stack plot for Loyalty point featuring Education.
ggplot(turtle_reviews, aes(x = education, y = loyalty_points, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Loyalty Points by Education and Gender",
       x = "Education",
       y = "Loyalty Points",
       fill = "Gender") +
  theme_minimal()

# Proportion stack plot for Loyalty point featuring Gender.
ggplot(turtle_reviews, aes(x = gender, y = loyalty_points, fill = education)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Loyalty Points by Education and Gender",
       x = "Gender",
       y = "Loyalty Points",
       fill = "Education") +
  theme_minimal()


# Correlation between numeric variables
correlation_matrix <- cor(turtle_reviews[, c("annual_income_k", "spending_score", "loyalty_points")])
print(correlation_matrix)

# ============================================================================
# LOYALTY PROGRAM ANALYSIS
# ============================================================================

# Descriptive statistics for loyalty points
loyalty_stats <- turtle_reviews %>%
  summarise(
    mean_points = mean(loyalty_points),
    median_points = median(loyalty_points),
    sd_points = sd(loyalty_points),
    min_points = min(loyalty_points),
    max_points = max(loyalty_points)
  )
print(loyalty_stats)



###############################################################################
###############################################################################

# Testing without outliers.
# Create a new data frame without outliers (< 3x IQ= 2,937).
new_loyalty_points <- filter(turtle_reviews, loyalty_points < 3000)

# Histogram of Loyalty Points
ggplot(new_loyalty_points, aes(x = loyalty_points)) +
  geom_histogram(binwidth = 300, fill = "blue", color = "black") +
  geom_density(fill = 'red', bw = 1)+
  labs(title = "Distribution of Loyalty Points",
       x = "Loyalty Points",
       y = "Frequency")+
  theme_minimal()
ggsave("histogram.png")
# Boxplot:
ggplot(new_loyalty_points, aes(y = loyalty_points)) +
  geom_boxplot() +
  labs(title = "Boxplot of Loyalty Points",
       y = "Loyalty Points")+
  theme_minimal()


# Scatter plot: Spending score vs Loyalty Points (linear).
ggplot(new_loyalty_points, aes(x = spending_score, y = loyalty_points)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "green") +
  labs(title = "Spending score vs Loyalty Points (linear)",
       x = "Spending Score",
       y = "Loyalty Points")+
  theme_minimal()

# Scatter plot: Spending score vs Loyalty Points.(non-linear).
ggplot(new_loyalty_points, aes(x = spending_score, y = loyalty_points)) +
  geom_point(alpha = 0.6) +
  geom_smooth(color = "green") +
  labs(title = "Spending score vs Loyalty Points (non-linear)",
       x = "Spending Score",
       y = "Loyalty Points")+
  theme_minimal()

# Scatter plot: Annual income vs Loyalty Points (linear).
ggplot(new_loyalty_points, aes(x = annual_income_k, y = loyalty_points)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Annual Income vs Loyalty Points (linear)",
       x = "Annual Income",
       y = "Loyalty Points")+
  theme_minimal()


# Scatter plot: Annual Income vs Loyalty Points (non-linear).
ggplot(new_loyalty_points, aes(x = annual_income_k, y = loyalty_points)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", color = "red") +
  labs(title = "Annual Income vs Loyalty Points (non-linear)",
       x = "Annual Income",
       y = "Loyalty Points")+
  theme_minimal()

scatter_linear <- ggplot(new_loyalty_points, aes(x = annual_income_k + spending_score, y = loyalty_points)) +
  geom_point(aes(shape = education), color = "Blue", alpha = 0.6) +
  geom_smooth(method = "lm", color = "black", se = TRUE, linewidth = 1.5) +
  labs(title = "Annual income and Spending Score vs Loyalty Points (linear)",
       x = "Annual income and Spending Score",
       y = "Loyalty Points",
       shape = "Education") +
  theme_minimal() +
  theme(
    panel.grid = element_line(color = "grey90"),
    axis.line = element_line(color = "black"),  # Add black axis lines
    axis.line.x = element_line(color = "black"), # Explicit x-axis line
    axis.line.y = element_line(color = "black")  # Explicit y-axis line
  )
scatter_linear

ggsave("scatter_linear.png", scatter_linear)

# Histogram of Loyalty points with density
ggplot(new_loyalty_points, aes(x = loyalty_points)) +
  geom_histogram(aes(y = ..density..), binwidth = 50, 
                 fill = "grey", color = "black", alpha = 0.5) +
  geom_density(bw = 15, color = "orange", size = 0.5) +
  labs(title = "Distribution of Loyalty Points",
       x = "Loyalty Points",
       y = "Density") +
  theme_minimal()

# Comparing gender with education and add a title.
ggplot(new_loyalty_points, aes(x=gender, fill=education)) + 
  geom_bar(position='dodge') +
  ggtitle("Customer education level by gender status")


# Proportion stack plot for Loyalty point featuring Education.
ggplot(new_loyalty_points, aes(x = education, y = loyalty_points, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Loyalty Points by Education and Gender",
       x = "Education",
       y = "Loyalty Points",
       fill = "Gender") +
  theme_minimal()

# Proportion stack plot for Loyalty point featuring Gender.
ggplot(new_loyalty_points, aes(x = gender, y = loyalty_points, fill = education)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Loyalty Points by Education and Gender",
       x = "Gender",
       y = "Loyalty Points",
       fill = "Education") +
  theme_minimal()


###############################################################################
###############################################################################

# Assignment 6 scenario

## In Module 5, you were requested to redo components of the analysis using Turtle Games’s preferred 
## language, R, in order to make it easier for them to implement your analysis internally. As a final 
## task the team asked you to perform a statistical analysis and create a multiple linear regression 
## model using R to predict loyalty points using the available features in a multiple linear model. 
## They did not prescribe which features to use and you can therefore use insights from previous modules 
## as well as your statistical analysis to make recommendations regarding suitability of this model type,
## the specifics of the model you created and alternative solutions. As a final task they also requested 
## your observations and recommendations regarding the current loyalty programme and how this could be 
## improved. 

################################################################################

## Assignment 6 objective
## You need to investigate customer behaviour and the effectiveness of the current loyalty program based 
## on the work completed in modules 1-5 as well as the statistical analysis and modelling efforts of module 6.
##  - Can we predict loyalty points given the existing features using a relatively simple MLR model?
##  - Do you have confidence in the model results (Goodness of fit evaluation)
##  - Where should the business focus their marketing efforts?
##  - How could the loyalty program be improved?
##  - How could the analysis be improved?

################################################################################

## Assignment 6 assignment: Making recommendations to the business.

## 1. Continue with your R script in RStudio from Assignment Activity 5: Cleaning, manipulating, and 
##     visualising the data.
## 2. Load and explore the data, and continue to use the data frame you prepared in Module 5.
## 3. Perform a statistical analysis and comment on the descriptive statistics in the context of the 
##     review of how customers accumulate loyalty points.
##  - Comment on distributions and patterns observed in the data.
##  - Determine and justify the features to be used in a multiple linear regression model and potential
##.    concerns and corrective actions.
## 4. Create a Multiple linear regression model using your selected (numeric) features.
##  - Evaluate the goodness of fit and interpret the model summary statistics.
##  - Create a visual demonstration of the model
##  - Comment on the usefulness of the model, potential improvements and alternate suggestions that could 
##     be considered.
##  - Demonstrate how the model could be used to predict given specific scenarios. (You can create your own 
##     scenarios).
## 5. Perform exploratory data analysis by using statistical analysis methods and comment on the descriptive 
##     statistics in the context of the review of how customers accumulate loyalty points.
## 6. Document your observations, interpretations, and suggestions based on each of the models created in 
##     your notebook. (This will serve as input to your summary and final submission at the end of the course.)

################################################################################

# Your code here.
# Load required libraries
library(tidyverse)
library(ggplot2)
library(skimr)
library(moments)
library(psych)
library(plotly)

# Setting work directory.
# setwd("C:/Users/Emmanuel/Documents/LSE_Course_3_assignment_files")

# Load data as a data frame.
turtle_reviews <- read.csv("turtle_reviews.csv",
                           header=TRUE)
# View the top of the data frame.
head(turtle_reviews)

# View the dimensions
dim(turtle_reviews)

# To search for missing values in a data set.
turtle_reviews[is.na(turtle_reviews)]

# To search for missing values in a specific column of a data set.
sum(is.na(turtle_reviews$size))

# Veiw the columns names
colnames(turtle_reviews)

# View the structure of the data frame.
str(turtle_reviews)

# Drop the unecesary columns.
turtle_reviews <- subset(turtle_reviews,
                         select = -c(language,
                                     platform, review, summary))

# Rename the columns, for better understanding.
turtle_reviews <- turtle_reviews %>%
  rename(annual_income_k = remuneration..k..,
         spending_score = spending_score..1.100.,
  )

# Sense check the data frame.
view(turtle_reviews)

# Create a summary of the database.
summary(turtle_reviews)

# The "product" column is being being presented as an integer.
# Convert "product" into a categorical factor.
turtle_reviews <- mutate(turtle_reviews,
                         product = as.factor(product))

# Detailed overview.
skim(turtle_reviews)

# Calculate skewness and kurtosis
skewness_val <- skewness(turtle_reviews$loyalty_points)
kurtosis_val <- kurtosis(turtle_reviews$loyalty_points)

# Print statistical measures
cat("\n","Skewness:", skewness_val, "\n","Kurtosis:", kurtosis_val)
# This kurtosis value is over 3, and the skewness is over 0.05 showing a leptokurtic distribution skewed to the right

# Creating Numeric only data frame.
numeric_reviews <- turtle_reviews %>% 
  select(loyalty_points, annual_income_k, spending_score, age)

# COnfirming
str(numeric_reviews)

#Finding the correlation:
#Using the base function.
cor(numeric_reviews)

# Plot correlation matrix.
corPlot(numeric_reviews, cex = 2)

# Save the plot as an image file
ggsave("corPlot.png", plot = corPlot(numeric_reviews, cex = 2), device = "png")

# Plot the correlation.
plot(numeric_reviews$loyalty_points, 
     numeric_reviews$annual_income_k + numeric_reviews$spending_score)

# ============================================================================
# STATISTICAL MODELING
# ============================================================================



# Multiple Linear Regression Model
# Create the model using significant numeric predictors
# Model 1: All variables
model1 <- lm(loyalty_points ~ annual_income_k + spending_score + age, 
              data = numeric_reviews)
# View the summary.
summary(model1)

# Model 2: Income and spending only (highest correlation)
model2 <- lm(loyalty_points ~ annual_income_k + spending_score, 
              data = numeric_reviews)
# View the summary.
summary(model2)

# Model 3: Income and age
model3 <- lm(loyalty_points ~ annual_income_k + age, 
              data = numeric_reviews)
# View the summary.
summary(model3)

# Model 4: Spending and age
model4 <- lm(loyalty_points ~ spending_score + age, 
              data = numeric_reviews)
# View the summary.
summary(model4)

# Model 5: Just income (single highest correlation)
model5 <- lm(loyalty_points ~ annual_income_k, 
              data = numeric_reviews)
# View the summary.
summary(model5)

# Model 6: Just spending score
model6 <- lm(loyalty_points ~ spending_score, 
              data = numeric_reviews)
# View the summary.
summary(model6)

# Comparing the best fitting models:
par(mfrow=c(2, 1))

# Visualising the best performing models:
# Q-Q Plot for Model 1
qqnorm(residuals(model1)) 
qqline(residuals(model1), col='blue')

# Q-Q Plot for Model 2
qqnorm(residuals(model2))
qqline(residuals(model2), col='red')

# Reset the plotting layout
par(mfrow=c(1,1))


# Log transform the better for better fitting of MLR
numeric_reviews <- numeric_reviews %>%
  mutate(
    log_loyalty_points = log(loyalty_points),
    log_annual_income = log(annual_income_k),
    log_spending_score = log(spending_score),
    log_age = log(age)
  )

# Plot the correlation.
plot(numeric_reviews$log_loyalty_points, 
     numeric_reviews$log_annual_income + numeric_reviews$log_spending_score)


# Multiple Linear Regression Model Using Log Data
# Create the model using significant numeric predictors
# Model 1: All variables
model_a <- lm(
              log_loyalty_points ~ 
              log_annual_income + 
              log_spending_score + 
              log_age, 
              data = numeric_reviews)
# View the summary.
summary(model_a)

# Model 2: Income and spending only (highest correlation)
model_b <- lm(log_loyalty_points ~ log_annual_income + log_spending_score, 
             data = numeric_reviews)
# View the summary.
summary(model_b)

# Model 3: Income and log_age
model_c <- lm(log_loyalty_points ~ log_annual_income + log_age, 
             data = numeric_reviews)
# View the summary.
summary(model_c)

# Model 4: Spending and log_age
model_d <- lm(log_loyalty_points ~ log_spending_score + log_age, 
             data = numeric_reviews)
# View the summary.
summary(model_d)

# Model 5: Just income (single highest correlation)
model_e <- lm(log_loyalty_points ~ log_annual_income, 
             data = numeric_reviews)
# View the summary.
summary(model_e)

# Model 6: Just spending score
model_f <- lm(log_loyalty_points ~ log_spending_score, 
             data = numeric_reviews)
# View the summary.
summary(model_f)


# Create predictions for both models
# Create predictions
predictions_a_log <- exp(predict(model_a)) # Convert back to original scale
predictions_b_log <- exp(predict(model_b)) # Convert back to original scale

# Extract coefficients and add reference line
coef_a <- coef(model_a)
coef_b <- coef(model_b)

# Set up the plotting layout
par(mfrow=c(2, 1))

#  (all variables)
plot(numeric_reviews$loyalty_points, predictions_a_log,
     main="Log-Transformed Model A: Actual vs Predicted Loyalty Points\n(Income + Spending + Age)",
     xlab="Actual Loyalty Points",
     ylab="Predicted Loyalty Points",
     pch=16,
     col=rgb(0, 0, 1, 0.5))  # Blue with transparency
abline(a=coef_a[1], b=coef_a[2], col='red', lwd=2, lty=2)

# Plot for Model B (income + spending)
plot(numeric_reviews$loyalty_points, predictions_b_log,
     main="Log-Transformed Model B: Actual vs Predicted Loyalty Points\n(Income + Spending)",
     xlab="Actual Loyalty Points",
     ylab="Predicted Loyalty Points",
     pch=16,
     col=rgb(0, 0.7, 0, 0.5))  # Green with transparency
abline(a=coef_b[1], b=coef_b[2], col='red', lwd=2, lty=2)

# Save the plot as an image file
ggsave("model_comparison.png")

# Reset the plotting layout
par(mfrow=c(1,1))

# Creating my own scenarios using the best model.
# Scenario 1: A customer with an annual income of 100k and a spending score of 50.

# Create a data frame with the scenario
scenario_1 <- data.frame(log_annual_income = log(100000),
                         log_spending_score = log(50))

# Predict the loyalty points
predict(model_b, newdata = scenario_1)

# Scenario 2: A customer with an annual income of 50k and a spending score of 100.

# Create a data frame with the scenario
scenario_2 <- data.frame(log_annual_income = log(50000),
                         log_spending_score = log(100))

# Predict the loyalty points
predict(model_b, newdata = scenario_2)

# Add the predictions to the data frame
numeric_reviews <- numeric_reviews %>%
  mutate(predicted_loyalty_points = exp(predict(model_b)))

# View the data frame
head(numeric_reviews)

# Exponential transformation
numeric_reviews <- numeric_reviews %>%
  mutate(
    predicted_loyalty_points = exp(predict(model_b))
  )

# View the data frame
head(numeric_reviews)

# Visualising the predictions
# Create a scatter plot of actual vs predicted loyalty points
animated_vis <- (ggplot(numeric_reviews, aes(x = loyalty_points, y = predicted_loyalty_points)) +
  geom_point() +
  geom_abline(intercept = 0, slope = 1, color = "red", linetype = "dashed") +
  labs(title = "Actual vs Predicted Loyalty Points",
       x = "Actual Loyalty Points",
       y = "Predicted Loyalty Points") +
  theme_minimal()) 

ggplotly(animated_vis)

# Save the plot as an HTML file
htmlwidgets::saveWidget(ggplotly(animated_vis), "animated_vis.html")

# Save the plot as an image file
ggsave("animated_vis.png", plot = animated_vis, device = "png")

# Observations and recommendations
# The multiple linear regression model was able to predict loyalty points based on annual income and spending score.
# The model was able to predict loyalty points with a reasonable degree of accuracy.
# The model could be used to predict loyalty points for different scenarios.
# The model could be improved by including more features or using a different model type.
# The business should focus marketing efforts on customers with high annual income and spending score.
# The loyalty program could be improved by offering more rewards to customers with high annual income and spending score.
# The analysis could be improved by including more features and using a different model type.


###############################################################################
###############################################################################
view(numeric_reviews)

# Create an animated scatter plot.
play_viz <- plot_ly(numeric_reviews,
        x = ~predicted_loyalty_points + spending_score,
        y = ~loyalty_points,
        type = 'scatter',
        mode = 'markers',
        frame = ~round(annual_income_k/10)*10,  # Round to nearest 10
        showlegend = FALSE) %>%
  layout(title = 'Customer Loyalty Points vs Predicted Values and Spending',
         xaxis = list(title = 'Predicted Loyalty Points + Spending Score'),
         yaxis = list(title = 'Actual Loyalty Points'))

# Export the plot as an HTML file.
htmlwidgets::saveWidget(play_viz, "play_viz.html")

play_viz <- plot_ly(numeric_reviews,
                    x = ~predicted_loyalty_points + spending_score,
                    y = ~loyalty_points,
                    type = 'scatter',
                    mode = 'markers',
                    marker = list(
                      color = '#003366',  # Dark blue points
                      opacity = 0.6,     # Alpha transparency
                      size = 8           # Point size
                    ),
                    frame = ~round(annual_income_k/10)*10,  # Round to nearest 10
                    showlegend = FALSE) %>%
  layout(
    title = 'Customer Loyalty Points vs Predicted Values and Spending',
    xaxis = list(
      title = 'Predicted Loyalty Points + Spending Score',
      showgrid = TRUE,
      gridcolor = 'rgb(230, 230, 230)',  # Light grey grid
      zeroline = TRUE,
      zerolinecolor = 'black',
      zerolinewidth = 1
    ),
    yaxis = list(
      title = 'Actual Loyalty Points',
      showgrid = TRUE,
      gridcolor = 'rgb(230, 230, 230)',  # Light grey grid
      zeroline = TRUE,
      zerolinecolor = 'black',
      zerolinewidth = 1
    ),
    paper_bgcolor = 'white',
    plot_bgcolor = 'white'
  )
play_viz

# Export the plot as an HTML file
htmlwidgets::saveWidget(play_viz, "play_viz.html")
fig.write_html("animated_plot.html")

###############################################################################
###############################################################################
