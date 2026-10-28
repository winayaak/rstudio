# Practical No. 7: Data Visualization Using R
# Aim: Import, analyse and visualize monthly Sales and Profit data.

# Step 1: Import the CSV dataset
sales_data <- read.csv(file.choose())

# Step 2: Display and inspect the dataset
print(sales_data)
str(sales_data)
summary(sales_data)

# Step 3: Check missing values
colSums(is.na(sales_data))

# Step 4: Create a bar chart of monthly Sales
barplot(
  sales_data$Sales,
  names.arg = sales_data$Month,
  col = "skyblue",
  main = "Monthly Sales",
  xlab = "Month",
  ylab = "Sales",
  border = "black"
)

# Step 5: Create a line chart of the Sales trend
plot(
  sales_data$Sales,
  type = "o",
  col = "blue",
  pch = 16,
  xaxt = "n",
  main = "Monthly Sales Trend",
  xlab = "Month",
  ylab = "Sales"
)
axis(1, at = 1:nrow(sales_data), labels = sales_data$Month)

# Step 6: Create a scatter plot of Sales vs Profit
plot(
  sales_data$Sales,
  sales_data$Profit,
  main = "Sales vs Profit",
  xlab = "Sales",
  ylab = "Profit",
  col = "red",
  pch = 19,
  cex = 1.5
)

# Add a regression line
abline(
  lm(Profit ~ Sales, data = sales_data),
  col = "blue",
  lwd = 2
)

# Calculate the correlation coefficient
print(cor(sales_data$Sales, sales_data$Profit))

# Step 7: Create a histogram of Sales
hist(
  sales_data$Sales,
  main = "Distribution of Sales",
  xlab = "Sales",
  ylab = "Frequency",
  col = "lightgreen",
  border = "black",
  breaks = 5
)

# Step 8: Create a box plot of Sales
boxplot(
  sales_data$Sales,
  main = "Box Plot of Sales",
  ylab = "Sales",
  col = "orange",
  border = "black",
  horizontal = FALSE
)

# Step 9: Create a comparative bar chart of Sales and Profit
comparison_data <- rbind(
  sales_data$Sales,
  sales_data$Profit
)

barplot(
  comparison_data,
  beside = TRUE,
  names.arg = sales_data$Month,
  col = c("skyblue", "orange"),
  main = "Monthly Sales and Profit",
  xlab = "Month",
  ylab = "Amount"
)

legend(
  "topleft",
  legend = c("Sales", "Profit"),
  fill = c("skyblue", "orange")
)
