# General Instructions

## Prerequisites
Before running the script, ensure that the following software is installed:

- R version 4.0+

You can download it from R's official site.

- RStudio (optional but recommended)

RStudio is the IDE what I tested the scripts.

## Project Structure
Here's an overview of the project structure:

- Files Included:

    - **filesx.R** R scripts for each question, x means answer file for x question number.

    - **main.R**
cmd like app *(some projects)* to run a script based on user inpu, when this file run it shows "Enter the number of question (1 to 4): or 'q' to quit:".

    - **Assignmentx.Rproj**
The RStudio project file.

    - **Data folder**
Contains csv file (not included).

    - **Screenshots folder**
Contains screenshots for scripts output.

    - **Project Structure:**

```
📂Assignmentx
├── 📂data 
├── 📂screenshots
├── file1.R 
├── file2.R
├── file3.R
├── file4.R
├── main.R
└── Assignmentx.Rproj
```

## Running
In case of using terminal, just run code below:

**Single file:**
```
source("c:\\Path for R file\file1.R")
```
**cmd file:**
```
source("c:\\Path for R file\main.R")
```

*I'd recommend the using of IDE such as RStudio or VSCode*