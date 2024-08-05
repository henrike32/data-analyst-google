# SCRIPT TO INSTALL PACKAGES NEEDED FOR ANALYSIS AUTOMATICALLY:

# Define the required packages:
required_packages <- c("ggplot2", "dplyr", "tidyr", "readr", "purrr", "here", "janitor", "skimr")

# Identify which packages are already installed
installed_packages <- required_packages %in% rownames(installed.packages())

# Install missing packages
if (any(!installed_packages)) {
  install.packages(required_packages[!installed_packages])
}

# Load all required packages
invisible(lapply(required_packages, library, character.only = TRUE))

# Identify Datasets in Global Environment
#You can list all datasets in your global environment using the following command:
datasets <- ls()

## SCRIPT TO RUN 3 COMMANDS FOR EACH DATASETS AT ONCE (YOU CAN CHANGE THE COMMANDS) ##
# Load necessary packages:
library(dplyr)
library(tidyr)
# Define your datasets:
datasets <- list(dataset1 = df1, dataset2 = df2, dataset3 = df3)  # Replace df1, df2, df3 with your actual data frames
# Create a function to execute commands:
analyze_dataset <- function(data) {
  print(glimpse(data))
  print(head(data))
  print(select(data, everything()))  # Adjust selection as needed
}
# Apply your function to each datasets: 
lapply(datasets, analyze_dataset)

#Script:
library(dplyr)
library(tidyr)
datasets <- list(df1 = heartrate_seconds_merged, df2 = hourlyCalories_merged, df3 = hourlyIntensities_merged, 
                 df4 = hourlySteps_merged, df5 = minuteCaloriesNarrow_merged, df6 = minuteIntensitiesNarrow_merged,
                 df7 = minuteMETsNarrow_merged, df8 = minuteSleep_merged, df9 = minuteStepsNarrow_merged, 
                 df10 = weightLogInfo_merged, df11 = dailyActivity_merged)

analyze_dataset <- function(data) {
  print(glimpse(data))
  print(head(data))
  print(select(data, everything()))
}

lapply(datasets, analyze_dataset)

## RESULT ##
# Commands used:
head(heartrate_seconds_merged)
glimpse(heartrate_seconds_merged)
select(heartrate_seconds_merged)

# After checking all the datasets we came to a conclusion 
#about the number of rows and type of datasets.

#df1-Checking the 'heartrate_seconds_merged' dataset: Data in long mode, 1154681 rows 3 columns.
#df2-Checking the 'hourlyCalories_merged' dataset: Data in long mode, 24084 rows 3 columns.
#df3-Checking the 'hourlyIntensities_merged' dataset: Data in long mode, 24084 rows 4 columns.
#df4-Checking the 'hourlySteps_merged' dataset: Data in long mode, 24084 rows 3 columns.
#df5-Checking the 'minuteCaloriesNarrow_merged' dataset: Data in long mode, 1445040 rows 3 columns.
#df6-Checking the 'minuteIntensitiesNarrow_merged' dataset: Data in long mode, 1445040 rows 3 columns.
#df7-Checking the 'minuteMETsNarrow_merged' dataset: Data in long mode, 1445040 rows 3 columns.
#df8-Checking the 'minuteSleep_merged' dataset: Data in long mode, 198559 rows 4 columns.
#df9-Checking the 'minuteStepsNarrow_merged' dataset: Data in long mode, 1445040 rows 3 columns.
#df10-Checking the 'weightLogInfo_merged' dataset: Data in long mode, 33 rows 8 columns.
#df11 Checking the 'dailyActivity_merged' dataset: Data in long mode, 457 rows 15 columns.
