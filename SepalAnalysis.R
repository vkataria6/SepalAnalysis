# Question 1
data(iris)
setosa_data <- subset(iris, Species == "setosa")
versicolor_data <- subset(iris, Species == "versicolor")
virginica_data <- subset(iris, Species == "virginica")

plot(setosa_data$Sepal.Length, setosa_data$Sepal.Width, col = "blue", pch = 16, xlim = c(4, 8), ylim = c(2, 4.5),
     xlab = "Sepal Length", ylab = "Sepal Width", main = "Distribution of Sepal Width vs. Sepal Length")

points(versicolor_data$Sepal.Length, setosa_data$Sepal.Width, col = "red", pch = 16)
points(virginica_data$Sepal.Length, virginica_data$Sepal.Width, col = "green", pch = 16)

legend("topright", legend = levels(iris$Species), col = c("blue", "red", "green"), pch = 16)

# Question 2
data(iris)

setosa_data <- iris[iris$Species == "setosa",]
sd <- sd(setosa_data$Sepal.Length)
print(sd)

# Question 3

# Null Hypothesis: The mean sepal width of the setosa species is equal to the mean sepal width of the versicolor species.
# Alternative Hypothesis: The mean sepal width of the setosa species is different from the mean sepal width of the versicolor species.

iris
setosa_width <- iris$Sepal.Width[iris$Species == "setosa"]
versicolor_width <- iris$Sepal.Width[iris$Species == "versicolor"]

result <- t.test(setosa_width, versicolor_width)
print(result)
