# our first calculations
quarter_1_sales <- 35657.98
quarter_2_sales <- 43810.55
midyear_sales <- quarter_1_sales + quarter_2_sales
yearend_sales <- midyear_sales * 2

# Data-Imports Basics
readr_example("mtcars.csv")
read_csv(readr_example("mtcars.csv"))
library(readxl)
read_excel(readxl_example("type-me.xlsx"))
read_excel(readxl_example("type-me.xlsx"), sheet= "numeric_coercion")

# M3 Activity 
# Load tidyverse:
library(tidyverse)
# Read the hotel_bookings.csv file, note that you need the file in the specific
# directory to work properly:
bookings_df <- read_csv("hotel_bookings.csv") 
# One common function you can use to preview the data:
head(bookings_df)
# The structure function:
str(bookings_df)
# To find out what columns you have in your data frame:
colnames(bookings_df)
# To create another data frame using `bookings_df` that focuses 
# on the `adr` column in the data frame, and `adults`, you can use:
new_df <- select(bookings_df, 'adr', adults)
# To create new variables in your data frame, you can use the `mutate()` function:
mutate(new_df, total = 'adr' , adults)
