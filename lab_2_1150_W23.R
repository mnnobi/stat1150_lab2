#Dataframes 

##Tooth Growth

#Show dataframe
ToothGrowth

#Show assigning a column using $ to a new vector
#First line assigns, second displays
len<-ToothGrowth$len
len

# Basic Histogram of Data set
hist(len)

# Run taking code in smaller samples to show that
# every sample is different. Larger samples look
# closer to the original population

#Explain sample function
len.sample15<-sample(len, 15, replace=FALSE)
hist(len.sample15)

len.sample30<-sample(len, 30, replace=FALSE)
hist(len.sample30)

## Summary Statistics and Labeling on Graphs

#Number of red light camera tickets
x1<-c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,3,3,4,5,5)

#Basic Summary Statistics
mean(x1)
median(x1)
var(x1)
sd(x1)
fivenum(x1)

# Histogram of Red Lights. Explain use of breaks and right and main
# and xlab
hist(x1, breaks=c(0,1,2,3,4,5,6), right=FALSE, 
     main="Number of Red Lights", xlab="Number of Tickets")
# Why is this not an appropriate graph?
# Make boxplot both horizontal and vertical
boxplot(x1)
boxplot(x1, horizontal=TRUE)


#Salaries, in thousands of dollars 
x2<-c(24, 24, 25, 25, 26, 26, 26, 27, 27, 27, 32, 32, 32, 33, 33, 33, 
      33, 34, 34, 36, 36, 37, 37, 45, 46, 46, 60, 89, 90, 90, 120)
mean(x2)
median(x2)
# Make histogram. Explain breaks and ylim (used to make room for labels)
hist(x2, breaks=10, ylim=c(0,17), main="Salaries in thousands of $")
# Add in line labels for mean and median to find best measure
abline(v=mean(x2), col="red")
abline(v=median(x2), col="blue")
# Label lines with text legend. srt rotates the text by that many 
# degrees counter clockwise
text(38, 15, "Mean", col="red", srt=90)
text(28, 15.5, "Median", col="blue", srt=90)
# Text uses x and y co-ordinate. Can use the command locator(1) to 
# try to find the approximate correct spot for the center of the label.

#Bridge scores, Kirkfield Westwood Sept. 4 
x3<-c(35.30, 41.01, 41.76, 43.34, 46.65, 51.43, 52.09, 57.30, 59.25, 
      60.53, 60.70,42.98,45.24,45.85,46.23,50.30,50.71,52.85,53.47,56.44)
mean(x3)
median(x3)
hist(x3, main="Bridge Scores")
# Add in line labels for mean and median to find best measure
abline(v=mean(x3), col="red")
abline(v=median(x3), col="blue")

#Let's make some other alterations the graph:
hist(x3, main = "Bridge Scores", col="mistyrose1", cex.axis=1.2, col.axis="slateblue2",
     col.lab="olivedrab", col.main="plum4", family="HersheyGothicItalian", lty="dotdash")
# col - bar color
# cex.axis - text size scaling factor
# col.axis - color of labels at tick marks
# col.lab - color of axis labels
# col.main - color of title
# family - font 
# lty - line style

# Main histogram options
?hist

# Cosmetic options
?par

# Fonts
# https://astrostatistics.psu.edu/su07/R/html/grDevices/html/Hershey.html

# Colors
colors()
# https://www.datanovia.com/en/blog/awesome-list-of-657-r-color-names/
