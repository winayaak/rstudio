# Practical No. 7 --- Data Visualization Using R

This repository contains the files needed to perform **Practical No. 7:
Data Visualization Using R** in RStudio.

## Download R and RStudio

Install **R first**, then install RStudio Desktop.

1.  **R (required):** [Download R from the official CRAN
    website](https://cran.r-project.org/)
2.  **RStudio Desktop (IDE):** [Download RStudio Desktop from
    Posit](https://posit.co/download/rstudio-desktop/)

> R is the programming language. RStudio is the application used to
> write and run R code. Installing RStudio alone is not enough; install
> R first.

## Files in this repository

-   `Practical7.R` --- complete R program for importing, inspecting, and
    visualizing the dataset.
-   `sales_data.csv` --- monthly Sales and Profit data for January to
    October.
-   `README.md` --- setup and execution instructions.

## Dataset

The CSV contains three columns:

  Month     Sales   Profit
  ------- ------- --------
  Jan         120       20
  Feb         150       28
  Mar         180       35
  Apr         140       24
  May         210       45
  Jun         240       52
  Jul         220       48
  Aug         260       58
  Sep         280       65
  Oct         250       55

## How to run the practical

1.  Download or clone this repository.
2.  Keep `Practical7.R` and `sales_data.csv` in the same folder.
3.  Open RStudio.
4.  Select **File → Open File**, then open `Practical7.R`.
5.  Run the script from the top by selecting all code (**Ctrl + A**) and
    pressing **Ctrl + Enter**.
6.  When the file-selection window appears, choose `sales_data.csv` and
    click **Open**.
7.  View printed results in the **Console** and graphs in the **Plots**
    pane. Use the plot navigation arrows to move between graphs.

If you prefer to run the code line by line, place the cursor on a line
and press **Ctrl + Enter**. When the import line runs, select
`sales_data.csv` when prompted.

## What the program does

-   Imports the CSV dataset.
-   Displays the data, structure, and summary statistics.
-   Checks for missing values.
-   Creates a bar chart of monthly Sales.
-   Creates a line chart showing the Sales trend.
-   Creates a scatter plot of Sales versus Profit and adds a regression
    line.
-   Calculates the correlation coefficient between Sales and Profit.
-   Creates a histogram and a box plot of Sales.
-   Creates a comparative bar chart of Sales and Profit.

No additional R packages are required; the program uses base R
functions.

## Expected observations

-   **Highest Sales:** September --- 280
-   **Lowest Sales:** January --- 120
-   **Missing values:** 0 in each column
-   **Median Sales:** 215
-   **Correlation between Sales and Profit:** approximately `0.998692`,
    indicating a very strong positive relationship.

## Troubleshooting

-   If `file.choose()` reports that the file selection was cancelled,
    run the script again and select `sales_data.csv`.
-   If the CSV does not appear in the file chooser, check that you
    downloaded or extracted the repository files.
-   If RStudio is installed but cannot find R, install R from CRAN
    first, then restart RStudio.

## Official links

-   R Project / CRAN: https://cran.r-project.org/
-   RStudio Desktop by Posit: https://posit.co/download/rstudio-desktop/
