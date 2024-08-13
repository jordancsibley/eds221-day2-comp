# afternoon interactive session ----

# creating vector "x"
x <- c(2.1, 4.2, 3.3, 5.4)


# practicing doing some indexing ----

x[seq(1:3)] # 1 through 3 
x[c(3,1)] # the 3rd element and the 1st element 

x[order(x)]
# elements of x ordered from smallest to largest 

x[c(1,1)]
# the 1st element twice 

x[c(2.1, 2.9)]
# truncates to each of these values to 2, so gives us the 2nd element twice 

x[-1]
# got rid of the 1st element 

x[-c(3,1)]
# got rid of the 3rd and the 1st 

# logicals ----

x[c(TRUE, TRUE, FALSE, FALSE )]
# gives us the 1st and second only 

x[x > 3]
# all the elements that are greater than 3

x[c(TRUE, FALSE)]
# r made the choice to do true false true false, so it prints out the 1st and 3rd element 

x[c(TRUE, TRUE, NA, FALSE)]
# replaces 3rd value with an NA 


# assignments ----

x <- 1:5
x
x[c(1,2)] <- 2:3
x
# replaces the 1st and 2nd elements with the numbers 2 and 3 

x[-1] <- 4:1
x
# changes all but the first element 

df<- data.frame(a = c(1, 10, NA))
df$a[df$a < 5] <- 0
df
# replaced anything less than 5 to be 0 

#rm(list = ls())  this function will remove everything in your environment. good to run at the begining 