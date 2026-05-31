# Sales_ETL_project

This is a project in the context of a Data Engineering Bootcamp of Big Blue Data Academy. More precisely this is (essentially) an ETL project, for which we drew data from kaggle speficically https://www.kaggle.com/datasets/ulrikthygepedersen/online-retail-dataset. This is an online retail dataset.

Let's break down the contents of each folder seperately:

-- the data/source contains the raw_data.csv file that contains the data. The original dataset contained almost half a million rows, but, for computational reasons, only 1500 rows were kept. 

-- the etl_scripts is the main folder of the project:
    1) extract.ipynb: this is the first step of the ETL process. Here we view the data and spot 'dirty' rows (that is, rows that will either be updated or deleted in the 'transform' part). There is an info.txt file that contains the various 'mistakes' that we found (and changed on transform.ipynb)
    2) transform.ipynb: here, we clean the data using the Pandas library; this includes change of types/deletion of duplicates/handling missing values etc. We end up with a clean_data dataframe which we then turn into csv in order to use it in the load.ipynb
    3) load.ipynb: here, we load the clean data into a local postgreSQL database using various libraries such as: psycopg2, sqlalchemy, urllib.parse
    4) visuals.ipynb: here we used matplotlib to draw some visuals. 

-- the sql_scripts gathers everything related to SQL, in particular:
    1) create_table.sql creates the (one and only) table of the database.
    2) basic_queries.sql runs a few queries that show varius results with respect to different countries/products/customers
    3) create_views.sql creates some basic views with respect to countries (for example all the 'united kingdom' data)
    4) functions.sql creates some functions so that the user can (for example) calculate the total revenue from a single country by running something like: select get_total_sales_by_country(country)

