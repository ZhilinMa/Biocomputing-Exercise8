# set working directory as cloned directory Biocomputing-Exercise8
setwd("~/Library/CloudStorage/GoogleDrive-annamac2021@gmail.com/My Drive/School/Fall 2022/Biocomputing/R/Biocomputing-Exercise8")

# 1) replicate head function
# define file variable
input_file=read.csv("iris.csv")
# define number of lines variable
num_lines=10
# extract lines from top of file
top_lines=input_file[1:num_lines,]
# print to console
print(top_lines)

# 2) interpret iris.csv file
# load iris.csv file into data frame
iris_df=read.csv("iris.csv")
# print last 2 rows in last 2 columns to R terminal
num_columns=ncol(iris_df)
num_rows=nrow(iris_df)
last2last2=iris_df[(num_rows-1):num_rows,(num_columns-1):num_columns]
print(last2last2)
# get number of observations for each species in data set
num_setosa=sum(iris_df$Species=="setosa")
num_versicolor=sum(iris_df$Species=="versicolor")
num_virginica=sum(iris_df$Species=="virginica")
# get rows with Sepal.Width > 3.5
SepalWidthRows=iris_df[iris_df$Sepal.Width>=3.5,]
# write data for species setosa to comma-delimited file named 'setosa.csv'
# extract setosa data
setosa_data=iris_df[iris_df$Species=="setosa",]
write.csv(setosa_data, "~/Library/CloudStorage/GoogleDrive-annamac2021@gmail.com/My Drive/School/Fall 2022/Biocomputing/R/Biocomputing-Exercise8\\setosa.csv")
# calculate mean, minimum, maximum Petal.Length for virginica observations
# extract virginica data
virginica_data=iris_df[iris_df$Species=="virginica",]
# from virginica, extract data for petal lengths
virginica_petallengths=virginica_data$Petal.Length
# analyze petal length data
virginica_meanpl=mean(virginica_petallengths)
virginica_minpl=min(virginica_petallengths)
virginica_maxpl=max(virginica_petallengths)
