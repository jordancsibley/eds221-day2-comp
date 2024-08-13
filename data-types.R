# creating some vectors to practice looking at different data types ----

dogs <- c("teddy", "khora", "waffle", "banjo")

typeof(dogs)
class(dogs)

weights <- c(50, 55, 25, 35)

typeof(weights)
class(weights)

dog_age <- c(5L, 6L, 1L, 7L)

typeof(dog_age)
class(dog_age)

is.numeric(dog_age)
# asking if this vector is in the class numeric. intergers are apart of the class numeric 


# combining classes ----

dog_info <- c("teddy", 50, 5L)

dog_info 
# wont allow you to keep this as different data types. it will force the other numbers in this vector to characters, which in this case is the most genaric of the group. 

typeof(dog_info)
is.character(dog_info)


# named elements ----

dog_food <- c(teddy = "purina", 
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond")
dog_food


# accessing bits of vectors ----

dog_food[2]
dog_food["khora"]
# both of these bring up the info in the second place. this is called indexing 

cars<- c("red", "orange", "white", "blue", "silver", "black")
cars[5]
cars[2:4] #asking for the 2nd through the 4th element 

i <- 4
cars[i]
# this will be helpful for when we do four loops. because you can go and change the number that is assigned to the variable 

i <- seq(1:3)
cars[i]


# can always be updating the info in them 

cars[3] <- "burritos"
cars
# we just made the 3rd element be "burritos"


# matrices ----

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
fish_size

typeof(fish_size) # asks about type of data stored 
class(fish_size) # asks about the strucutre of the data 


dog_walk<- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk
#stored all the data as the same (characters)

class(dog_walk)
typeof(dog_walk)

whale_travel <- matrix(data = c(31.8, 1348, 26.9, 1587), ncol = 2, nrow = 2, byrow = FALSE)
whale_travel

whale_travel[1,2] # indexing in a matrix [row, column] 
whale_travel[2,] # everything in the second row 
whale_travel[,1] # everything in first column 


# lists ----

urchins<- list("blue", c(1, 2, 3), c("a cat", "a dog"), 5L)

urchins[[1]] # gives us "blue"

tacos<- list(toppings = c("onion", "cilantro", "guac"), fillings = c("beans", "meat", "veggies"))
tacos

tacos[[2]]
# gives us everything in fillings 
tacos$fillings
# this gives us the same info as above 

tacos$fillings[1]
# gives us the first element in fillings 


# data frames ----

fruit <- data.frame(type = c("apples", "banana", "peach"),
           mass = c(130, 195, 250))

fruit 
# two vectors, one for type one for mass, and they are of the same lenght so it knows what goes with what 

class(fruit)

# accessing elements in a data frame ----

fruit[3,1]
# third row first column 

fruit[2,1] <- "pineapple" # allows you to change the element 
fruit 

fruit$type # vector of everything in that column 