PRACTICAL NO. 7 — DATA VISUALIZATION USING R
================================================

FILES INCLUDED
--------------
1. Practical7.R     - Complete R program
2. sales_data.csv   - Dataset used by the program

HOW TO RUN IN THE COLLEGE LAB
-----------------------------
1. Copy both files into the same folder on the lab computer.
2. Open RStudio.
3. Choose File > Open File, then open Practical7.R.
4. Click inside the script editor and press Ctrl+S if you want to save a copy.
5. Run the program from the top:
   - Click the first line, then use Ctrl+Enter line-by-line, OR
   - Select all the code with Ctrl+A and press Ctrl+Enter.
6. When the file chooser opens, select sales_data.csv and click Open.
   If you run all selected code at once, make sure you select the CSV when prompted.
7. Text results appear in the Console. Graphs appear in the Plots pane.
8. Use the Previous Plot / Next Plot arrows in the Plots pane to view each graph.

IMPORTANT
---------
- Keep Practical7.R and sales_data.csv available on the lab computer.
- The CSV columns must be named exactly: Month, Sales, Profit.
- No extra R packages are required; the program uses base R.
- If file.choose() does not open, run this alternative after copying both files
  into the same folder and setting R's working directory to that folder:
      sales_data <- read.csv("sales_data.csv")
  In RStudio, you can set the working directory through Session >
  Set Working Directory > Choose Directory.
- If the Console shows a + prompt, R may be waiting for a closing bracket or
  quote. Press Esc once to cancel the incomplete command, then rerun the script.

EXPECTED OBSERVATIONS
---------------------
- Highest Sales: September (280)
- Lowest Sales: January (120)
- Missing values: 0 in Month, Sales, and Profit
- Correlation between Sales and Profit: approximately 0.998692
- The data shows a very strong positive relationship between Sales and Profit.
