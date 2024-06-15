today()
now()
ymd("2024-04-15")
mdy("April 15th, 2024")
dmy("15-April-2024")
ymd_hms("2024-04-15 14:32:32")
ymd_hm("2024/04/15 14:32") 
as_date(now())

# Other common data structures: 
# Data Frames
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
# Extracting an element from line 2 column 1:
z <- data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
z[2,1]
# Creating a new file:
file.create("new_csv_file.csv") 
# Copy a file:
file.copy("new_text_file.txt", "destination_folder")
# Delete R files with unlink:
unlink("some_.file.csv")
# Creating a 2x3 matrix using nrow:
matrix(c(3:8), nrow = 2)
# Creating a 3x2 matrix using ncol:
matrix(c(3:8), ncol = 2)
# Similar to data frames, you can extract an element 
# from a matrix with the extract operator, [].