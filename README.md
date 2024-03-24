# <p align="center">Project 2: ETL
## Data Analytics mini project to build an ETL (Extract, Transform, and Load) pipeline for fictitious crowdfunding data

analyze fictitious employee .csv data using SQL
### Overview
1. Extract data from multiple sources
2. Transform or clean-up and restructure the data into a desired form
3. Load or write the data into a database for storage
### Features
1. Extract and transform the data using Python
2. Export the data to .csv files and construct an ERD (entity relationship diagram)/table schema for those data
3. Create the tables in a local PostgreSQL database and import the .csv files into those tables
### Prerequisites
- Familiarity with and use of the Python programming language, and software to interact with .ipynb files, such as [Jupyter Notebook](https://jupyter.org/)
- Familiarity with and use of an application for opening and examining .csv files, such as [Microsoft Excel](https://www.microsoft.com/en-us/microsoft-365/excel)
- Familiarity with and use of an entity relationship diagram (ERD)-making tool, such as [QuickDBD](https://www.quickdatabasediagrams.com/)
- Familiarity with [PostgreSQL](https://www.postgresql.org/) and use of [pgAdmin](https://www.pgadmin.org/)
### Usage
- Download the contents of the repository to one directory
#### ETL_Mini_Project_MMcilvaine_CEngelhart.ipynb
- Launch Jupyter Notebook, navigate to the appropriate directory, and open ETL_Mini_Project_MMcilvaine_CEngelhart.ipynb
- If desired, clear outputs and inspect/run the code cell by cell, paying attention to prompts and comments throughout
- Have fun exploring/playing around with the code! Challenge yourself to come up with ways to make it more clear and/or efficient! For an extra challenge, create the desired contacts dataframe using regular expressions instead of Python dictionary methods
#### .csv Files
- Open the provided .csv files (or those which you generated by executing the .ipynb code)
- Inspect the .csv files and generate an ERD to display the relationships between the files
    - (If interested in how the below ERD was generated, open quickdbd_syntax.txt file, and copy & paste the text into the QuickDBD app's text pane)
<p align="center">
  <img width="900" src="https://github.com/cengelhart0120/Crowdfunding_ETL/blob/main/crowdfunding_db_ERD.png" alt="ERD of .csv data relationships">
</p>

#### crowdfunding_db_schema.sql
- Open pgAdmin, create/connect to a "local" server, then create a new database named `crowdfunding_db` to house the tables and their data
- Open the query tool in the newly-created database, then open crowdfunding_db_schema.sql in the query window
- Execute the code to create and alter the tables
    - Code to drop the tables is also included at the top, if needed at any point
- Import .csv data into the tables by matching names, but be sure to import campaign.csv **last** due to table constraints
- Run the "SELECT" queries at the bottom for each table to ensure they were created and populated successfully
### License
[MIT License](https://opensource.org/licenses/MIT)
### Contact
- [MMcilvaine's Github](https://github.com/mmcilvaine)
- [CEngelhart's Email](mailto:cengelhart@gmail.com)
- [CEngelhart's GitHub](https://github.com/cengelhart0120)
