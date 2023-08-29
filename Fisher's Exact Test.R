# FISHER'S EXACT TEST

## **LOAD LIBRARIES**

```{r}
# Composite super-package with all the good stuff
library(tidyverse)

# To get summary statistics
library(summarytools)

# To create publication ready tables
library(gtsummary)
```

## **IMPORT DATA**

```{r}
# Import data from a CSV file
df <- read.csv(file.choose())
# Use read_excel from the `readxl` library to read Excel files

# Attach data for easy calling of variables
attach(df)

# Get the first 6 rows of the dataframe
head(df)

# Get the last 6 rows of the dataframe
tail(df)
```

## **SUMMARY STATISTICS**

```{r}
# Get exploratory results for our data
summ <- dfSummary(df)

# Generate crosstabs
table <- tbl_cross(data = df,
                   row = Training,
                   col = Dance,
                   percent = "row")

# Print our table
table
```

## **FISHER'S EXACT TEST ASSUMPTIONS**

1.  The variables are categorical.

2.  All observations are independent.

3.  Cells in the table are mutually exclusive.

4.  Fixed Marginal Totals: The marginal totals, i.e., the totals for each row and column in the contingency table, are assumed to be fixed/predetermined and do not vary during the analysis.

## **FISHER'S EXACT TEST**

```{r}
# Performing Fisher's exact test
fisher.test(Training, Dance)
```

## VISUALIZE TEST RESULTS

```{r}
# Plotting a mosaic plot to visualize results
mosaicplot(Training ~ Dance,
           main = "Effect of type of Training on Learning to Dance")
```
