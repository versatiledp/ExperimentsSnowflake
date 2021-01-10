
Expirements with Snowflake
======================================================

:author: Raj R., Babu A., and Siva P.
:version: 0.1.2
:revision: Edition 0

.. class:: alert alert-info pull-right

.. contents::

.. section-numbering::

.. raw:: pdf

   PageBreak oneColumn
   SetPageCounter 1  

.. footer::

   Expirements with Snowflake    Page:
   ###Page###

.. raw:: pdf

   PageBreak
   

Snowflake & Data Platform Overview 
========================================


Snowflake
------------------------------

Snowflake is a cloud based SaaS (Software-as-a-Service) data warehouse
solution that makes it possible for organizations to:

-  Bring all of the business data together in one place for analysis.
-  Allow all analysts, applications or even customers shared access to data, without contention or the need to move or copy data.
-  Focus on analyzing data without worrying about hardware, software, or database tuning.
-  Utilize the SQL skills we already have, and leverage existing ecosystem of tools from extract transform load or extract load transfrom to business intelligence and more


Snowflake advantages
""""""""""""""""""""""""""""""""""""""""""""""

-  Is faster, easier to use, scalable, and far more flexible than other data platforms
-  Has an intuitive and simple interface
-  Services can be started quickly and delivers high-quality performance
-  Solves the concurrency issues with its multi-cluster warehouse architecture
-  Loads and processes the data quickly
-  Is a fully automated platform
-  Supports auto-scaling, big data workload, and data sharing
-  Allows a user to scale up the virtual warehouse and provides elasticity as per needs  


Snowflake architecture
""""""""""""""""""""""""""""""""""""""""""""""

The Snowflake architecture consists of three layers: 
storage, compute, and services. Each of these layers can be scaled independently. 
Organizations can scale up or down the resources as needed and pay only for the resources they consumed.

The 3 main components of the architecture are:

Database Storage — The actual underlying file system in Snowflake is backed by Snowflake’s account, 
all data is encrypted, compressed, and distributed to optimize performance. 
Snowflake also provides excellent data durability and availability.

Query Processing — Snowflake provides the ability to create Virtual Warehouses
which are basically compute clusters that are provisioned behind the scenes. 
Virtual Warehouses are used to load data or run queries and are capable of doing both
of these tasks concurrently. These Virtual Warehouses can be scaled up or down on demand 
and paused when not in use to reduce the spend on compute.
 
Cloud Services — Coordinates and handles all other services in Snowflake 
including sessions, authentication, SQL compilation, encryption, etc.

Connecting to Snowflake
""""""""""""""""""""""""""""""""""""""""""""""
Snowflake provides a few different methods to create database connectivity. 
One method is to use any of the supported ODBC/JDBC drivers for Snowflake. 
Web based worksheet can be leveraged within the Snowflake account.
SnowSQL CLI is also used to establish connectivity to Snowflake.


Snowflake data features
""""""""""""""""""""""""""""""""""""""""""""""

In the Snowflake platform data can be ingested from a variety of data 
formats like Parquet, CSV, ORC, JDBC, ODBC, and XML data sources. 
It supports JSON to a great extent. Furthermore it:

-  Provides full support to create views on different data formats.
-  Allows data sharing support for securely sharing data with other Snowflake accounts. 
-  Permits replication and syncing databases across multiple accounts in different regions. 
-  Enables time travel functions to query the history of data changes over a period of time. 


Snowflake is a cloud-agnostic platform providing a unified data management across multiple cloud service providers like Azure, 
AWS, and GCP. In other words, the Snowflake data warehouse can be built on top of Amazon web services, Microsoft Azure 
cloud infrastructure, or Google cloud.

The Snowflake command line client - SnowSQL CLI can also access all aspects of managing and using Snowflake. 
ODBC and JDBC drivers provides easy connectivity from the application/reporting layer to Snowflake.

Setting a Virtual Warehouse
""""""""""""""""""""""""""""""""""""""""""""""

Snowflake defines a virtual warehouse as a cluster of compute resources. 
The warehouse provides all the required resources like  CPU, memory, and temporary storage 
to start using the Snowflake.

Snowflake provides free trial credit. During free try out registeration, snowflake will create small instance
of warehouse for our subscription. This warehouse is setup to auto suspend mode to save credit, if there are no activities.

All data in Snowflake is maintained in databases. Each database consists of one or more schemas. 
Schemas are logical groupings of database objects like tables, views, functions. 


Data Platform Overview
----------------------------------

Modern data architecture allow enterprises to ingest data coming from
multiple systems, in a variety of data formats, different speeds, and unknown
intervals. Layered data platform design makes it easy to process big
data efficiently. It enables organizations to quickly deploy new data
analytics business case driven solutions to drive revenue and
profitability.

There are four main pillers of modern data platforms

- Data source layer
- Data processing and storage layer
- Analytics layer
- Consumption layer

Data source layer
""""""""""""""""""""""""""""""""""""""""""""""

-  Data sources can be inside the enterprise or external  
-  Data sources generate data in real-time and in batch mode   
-  A **variety** of data formats can be  structured, semi-structured, or unstructured   
-  The **velocity** (speed of arrival) and **volume** (delivery amount) will differ by sources 

Data processing and storage layer
""""""""""""""""""""""""""""""""""""""""""""""

Data processing layer receives data from the data sources, converts the data into a format
comprehensible for the data servicing and analytics tool, and stores the
data. For example, large amounts of data is
stored in the Hadoop distributed file system store (HDFS). Large data
processing is performed through Hadoop/Spark system. Data may
undergo format changes as it is processed through these systems. Cloud
service providers like Amazon, Google, and Microsoft allow a user to build and
operate data-centric applications with an infinite scale. Robust and
inexpensive storage is fundamental to the operation and scalability of
big data architecture. 

BigQuery, Azure Synapse,Amazon Redshift, and Snowflake
are used as standalone solutions for big data processing or in
combination of Hadoop/Spark ecosystems.

Analytics layer
""""""""""""""""""""""""""""""""""""""""""""""

The Analytics layer reads the data ingested and transformed by the data
processing and storage layer of big data ecosystem. This layer consists
varieties of data analytic tools for different user requirements. This
layer provides the data discovery mechanisms from  huge volumes of
data. Apache spark SQL, Hive, Apache spark streaming, Machine learning
libraries, Apache spark GraphX, SQL libraries, and number of other tool
sets are utilized in this layer to understand underlying data landscape.

Consumption layer
""""""""""""""""""""""""""""""""""""""""""""""

Consumption layer is also called the business intelligence layer. This layer 
receives results from the Analytical layer and presents the results  
using visualization tools, and 
business processes.

The following diagram summarize layers in data management solution

.. figure:: images/DataPlatform.jpg
   :align: center



Summary
----------------------------------
 
**Capabilities in the Snowflake enable data lake, data share, data visualization, data science, and data engineering for the organizations**
We will be working on the real world business case from the input data source to the visualization using Snowflake data platform.

This book includes:

-  Data Sources
-  Different source data formats, available to build platform
-  Snowflake database development 
-  Snowflake data transformation
-  Data pipeline orchestration
-  Data lineage, pipeline audit and control 
-  SnowSQL and JavaScript based stored procedures
-  Business use cases, users are tasked to solve
-  Data visualization


.. raw:: pdf

   PageBreak
   
Data Load Software
=============================

Snowflake data load can be achieved 

	-  SnowSQL - CLI allows bulk load data using SQL commands
	-  Snowpipe is utilized to automate large data set across multiple platforms
	-  Web interfaces are used to load small amounts of data
	-  Snowflake works with a wide range third parties like ETL/ELT Informatica, Talend, and Azure Data Factory

SnowSQL UI
------------------
The Snowflake web interface provides a convenient wizard for
loading limited amounts of data into a table from a small set of flat files. 
The Web UI allows us to simply select the table we want to load 
and by clicking the LOAD button we can easily load a limited amount of data into Snowflake. 
The wizard simplifies loading by combining the staging and data loading phases into a single 
operation and it also automatically deletes all the staged files after loading.

SnowSQL CLI 
------------------

SnowSQL CLI is the command line client for Snowflake. It executes SQL queries 
and performs all DDL and DML operations. It is an easy way to access Snowflake from the command line. 
It has the same capabilities as the Snowflake UI.

Login into Snowflake and click on help in the top right corner and download

.. figure:: images/SnowflakeCLI.png
   :align: center

We can also download SnowSQL CLI from the location URL :

https://Snowflakesolutions.net/snow-sql-cliclient/


.. figure:: images/SnowflakeCLI_Source.png
   :align: center

SnowSQL CLI gets invoked with snowsql.exe  

SnowSQL Command Usage

We can use the following command to connect to Snowflake using SnowSQL.


.. code-block:: rst

    snowsql -a accountName -u userName -d databaseName -s schemaName
	
For example, consider the following command to connect Snowflake from Windows command line.

.. code-block:: rst

	snowsql -a xxxxxx.us-east-1 -u xxxxxx -d demo_db -s public
	Password:******


Snowpipe
------------------

Snowpipe is a mechanism to load high frequency or streaming data. 
Snowpipe provides the capability to load the data as soon as it becomes available in a 
defined stage. It can load a near real-time or micro-batch load of data. Snowpipe is a serverless architecture
and does not use virtual warehouse resources. Snowpipe has its own resources, and those are managed by Snowflakes instances. 

Snowpipe makes REST API available to load data from 

	-  Amazon Web Services (AWS) -Amazon S3
	-  Google Cloud Platform - Cloud Storage
	-  Microsoft Azure Blob Storage, Data Lake Storage Gen2
	-  Hadoop and Spark big data platform


.. raw:: pdf

   PageBreak
   
Snowflake Staged Area
============================

Snowflake allows several types of staged file areas. A stage is a temporary storage area in the Snowflake warehouse. 
 

Snowflake supports two types of stages for storing data files- external and internal.

External stages are storage locations outside the Snowflake environment in another cloud storage location. 
It could be Amazon S3 storage, Microsoft Azure storage, or Google Cloud Storage buckets. This provides greater 
flexibility to accessing the data in Snowflake.  

.. line-block::

	The internal stage stores data files internally within Snowflake. Internal stages can be either permanent or temporary.  

.. line-block::
	Internal storage is classified into three categories. 

User Stage  
--------------------------

Each Snowflake user is attached to the default stage to store the file. User Stage is only accessible by specific user.

.. code-block:: rst

	put file://D:\Snowflake\sample_file.csv @~/staged;

The file will be uploaded to the user stage and a user can verify the same using LIST command.

.. code-block:: rst

	list @~/staged;

The user stages are referenced using @~.

For example, use LIST @~ to list the files in a user stage

Table Stage 
--------------------------

Each table has a Snowflake stage allocated for storing files. Multiple users can access a single table stage area.

.. code-block:: rst

	put file://D:\Snowflake\sample_file.csv @%test;
	
Users can also specify the subfolder within the table stage to upload the files.

.. code-block:: rst

	put file://D:\Snowflake\sample_file.csv @%test/sample_csv/;

The table stages are referenced using **@%tableName**.

For example, to list the files in a table stage

.. code-block:: rst

	LIST @%test

Table stages have the same name as the table. The table stages cannot be altered or dropped.

Table stages do not support setting file format options. Instead, they specify file format details in the COPY command.

Internal Named Stage
--------------------------

Internal stages are named database objects. Internal Named stages are the recommended stage 
to load the tables. It is accessible by multiple users. Internal stage can 
load multiple tables. File formats can be specified while creating an Internal Named stage.

Internal storage copies data within the Snowflake warehouse as shown below.

.. figure:: images/InternalStorage.png
   :align: center

.. raw:: pdf

   PageBreak



Project Data Source
======================

The Institute of Education Sciences (IES) is the statistics, research, and evaluation arm of the U.S. Department 
of Education. IES is independent and non-partisan. IES mission is to provide scientific evidence on which to ground education practice and policy and to share this information in formats that are useful and accessible to educators, parents, policymakers, researchers, and the public.

This book is designed to use data from IES and build analytics engine to answer business questions for the corporation.

Integrated Postsecondary Education Data System (IPEDS) - URL : https://nces.ed.gov/ipeds/
is the primary source from IES for the information on U.S. colleges, universities, and technical and vocational institutions. 

-  We are tasked to ingest variety of data formats
-  Tranform data for business users
-  Build data pipeline to process data on perodic basis
-  Create descriptive analytics around the use cases laid out by the business

All of the data used in this book is downloaded from - URL : https://nces.ed.gov/ipeds/use-the-data

.. figure:: images/IPEDSScreenShot.png
   :align: center

Data is downloaded for the three academic years (2017, 2018, and 2019).

Disclaimer – We have modified this data to explain Snowflake functionality. Analytics results in this book are
used to showcase and learn Snowflake features.
**Analytics results from this book should not be used to perform research on the institutions. Please refer to IES website for  statistics and research for Academic Institutions.**


Data flow process
----------------------------------------------------

For this project in the book, we will be following four building block of data transformation layers.

Staged file
""""""""""""""""""""""""""""""""""""""""""""""

All the data from the source system will be brought into the internal Staged file location of the Snowflake.
There is no transformation applied on this dataset. It is the purest form data from the transactional system and existing big data platforms.

Operation datastore (OD)
""""""""""""""""""""""""""""""""""""""""""""""

These are first level of physical table created in the Snowflake. Data from staged file is transformed to very basic minimum needs. 
OD table structure is very close resembles of staged file with proper data type and column names. 
Additional columns to help track on data lineage.

Servicing layer entities
""""""""""""""""""""""""""""""""""""""""""""""

This is the final destination for transformed data available for business intelligence layer. OD tables are used as input source to populate the 
servicing layer tables.

Dataflow Summary
""""""""""""""""""""""""""""""""""""""""""""""

Not all data from OD tables may land up in the servicing layer. Normally business users would want to use the tools like PowerBI, Tableau, and 
perform raw queries on the dataset. Best place for the business users to perform these analytics is the service layer.
Data Science may need data attributes not in the service layer to build predictive analytics. They can be granted access to OD tables and 
service layer entities. Data engineering needs to create transformation, perform meta data management, keep track of data pipelines so the access should be
granted to the all areas of data flow entities.

The below diagram shows the data flow process between files and the staging table. In this case, the stored procedures are used to load data from staged files to staging tables.


.. figure:: images/ingestionlayout.png
   :align: center



Book Datasource
--------------------

The files used in this book are:

Institutional Characteristics files [HDR]
""""""""""""""""""""""""""""""""""""""""""""""

This file contains directory information for every institution in the IPEDS universe. 
It includes name, address, city, state, zip code and various URL links to the institution's home page, 
admissions, financial aid offices and the net price calculator.

12-Month Enrollment [EFFY]
""""""""""""""""""""""""""""""""""""""""""""""

This file contains the unduplicated headcount of students enrolled over a 
12-month period for both undergraduate and graduate levels. Each record is 
uniquely defined by the variables IPEDS ID, and the level of enrollment.

Admissions and Test Scores [ADM] 
""""""""""""""""""""""""""""""""""""""""""""""

This file contains information about the undergraduate selection process 
for entering first-time, degree/certificate-seeking students. 

Student charges for academic year programs [IC*AY] 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

This file contains data on student charges for a full academic year. The price of attendance includes 
amounts for published tuition and required fees, books and supplies, room and board and other expenses. 

Code Mapping Data
""""""""""""""""""""""""""""""""""""""""""""""

This is semi structured dataset with special character delimeter. One file holds data for multiple destination table. Based on the value 
of the first column in the file, destination table is identified.


Data collection notes
--------------------------

    -  Original text delimited data in 
    -  EFFY file is converted to JSON format 
    -  ADM file is converted to Parquet format
    -  IC*AY file is converted to ORC format
    -  There is no change in the HDR file format (CSV format)

.. note:: 

   Utilities used to convert the original CSV files into different data formats are available to download at: https://github.com/versatiledp/ExperimentsSnowflake/tree/main/utilities

   All the datafiles used throughout the books are available to download at: 
   
   https://github.com/versatiledp/ExperimentsSnowflake/tree/main/data/input

After downloading the files, copy to the folder C:\\Snowflake\\data\\input\\.
The files in this book are loaded from local folder (like C:\\Snowflake\\data\\input\\*.*) to the Snowflake stage area using SnowSQL CLI.

Summary
--------------------------
We receive data files in various formats like CSV, ORC, Parquet, and JSON. These files are available in the folders by year. They are brought into the Snowflake staged files using the PUT command. Each staged file contains the entire data for that specific year. From these staged files, OD tables are populated. OD tables are physical tables in a Snowflake database. 
Using these OD tables, servicing layer tables of data-warehouse are populated. Snowflake stored procedures, views and functions are used for ETL/ELT processes.


.. raw:: pdf

   PageBreak
   


Ingesting Snowflake Stage
========================================================

Internal stage area for IPEDS
----------------------------------------------------


We are going to load different file formats like CSV, JSON, Parquet, and ORC. 
Internal named stage needs to be created for each of the file formats before loading data.

Create internal stage area IPEDS
----------------------------------------------------

Create the file formats and stage area for the text file 

1. tab delimited 
2. comma separated with no header
3. comma separated with header

.. code-block:: sql
   :include: \code\SQL\StagedFile\01_createStagedflatformat.sql 
 
--- Create JSON file format & stage area

.. code-block:: sql
   :include:  \code\SQL\StagedFile\02_createStagedjsonformat.sql 

--- Create ORC file format & stage area

.. code-block:: sql
   :include:  \code\SQL\StagedFile\03_createStagedORCformat.sql 

--- Create Parquet file format & stage area 

.. code-block:: sql
   :include:  \code\SQL\StagedFile\04_createStagedParquetformat.sql


Once these formats are created, we can check the staged area and formats to load Snowflake internal stage area with

.. code-block:: sql
   :include:  \code\SQL\StagedFile\20_ShowStagedfileList.sql


.. figure:: images/stagefilelist.JPG
   :align: center

.. code-block:: sql
   :include:  \code\SQL\StagedFile\21_ShowStagedformat.sql


.. figure:: images/formats.JPG
   :align: center

Summary

We have created an internal named stage in Snowflake to ingest CSV files, Parquet file, ORC file, and JSON files.

We will use the following stage area to load the raw files.

•	IPEDS_ADM 
•	IPEDS_EFFY
•	IPEDS_CM 
•	IPEDS_HD 
•	IPEDS_IC   
  

Load the files to internal stage for IPEDS
----------------------------------------------------

Connect to the Snowflake database using SnowSQL CLI and load the following files to the staging area.

Load academic institution (HDR) files - These are CSV files

.. code-block:: sql
   :include:  \code\SQL\StagedFile\05_LoadCSVfilestoStaged.sql


Load enrollment (EFFY) files  - These are JSON files

.. code-block:: sql
   :include:  \code\SQL\StagedFile\06_LoadJasonfilestoStaged.sql



Load institutional (IC) charges files  - These are ORC files. All the partitioned are loaded into specific folder of ORC staging area.

.. code-block:: sql
   :include: \code\SQL\StagedFile\07_LoadORCfilestoStaged.sql


Load admission files  - These are Parquet files. All the partitioned are loaded into specific folder of Parquet staging area.

.. code-block:: sql
   :include:  \code\SQL\StagedFile\08_LoadParquetfilestoStaged.sql

	
Load code mapping files  - These are CSV files.

.. code-block:: sql
   :include:  \code\SQL\StagedFile\09_LoadOtherfilestoStaged.sql


Confirm stage file availability in Snowflake

Once these files are loaded to the stage area, we can check the availability of 
these data files in the internal stage area as below:


.. code-block:: sql
   :include:  \code\SQL\StagedFile\51_GetStagedFileList_csv_hd.sql


.. figure:: images/csvlist.JPG
   :align: center

.. code-block:: sql
   :include:  \code\SQL\StagedFile\52_GetStagedFileList_json_effy.sql


.. figure:: images/jsonlist.JPG
   :align: center

.. code-block:: sql
   :include:  \code\SQL\StagedFile\53_GetStagedFileList_orc_ic.sql


.. figure:: images/stagedORC.JPG
   :align: center


.. code-block:: sql
   :include:  \code\SQL\StagedFile\54_GetStagedFileList_parquet_adm.sql


.. figure:: images/Parquetlist.JPG
   :align: center

.. code-block:: sql
   :include:  \code\SQL\StagedFile\55_GetStagedFileList_other.sql


.. figure:: images/csvOther.JPG
   :align: center



All the files from data source layers are ingested into the Snowflake staged area. 

If there are any issues in stage area, drop it using **remove @IPEDS_ADM** 



.. note::
   Code available to download at 
   
   https://github.com/versatiledp/ExperimentsSnowflake/tree/main/source/code/SQL/StagedFile

.. raw:: pdf

   PageBreak
   


Attribute Mapping
======================================================


Academic Institution  
---------------------

Institutional Characteristics Header files [HDR] are in CSV format. 
These files are directly ingested into Snowflake staging from the source system. 
ELT layer defines the schema for the CSV file with data types. 
The following diagram displays mapping between the CSV attribute and the stage layer. 
The OD layer is used to process data for destination layer with additional transformations.

.. figure:: images/csvIngestion.jpg
 

Enrollment 
------------------

Enrollment files [EFFY] are in JSON format. JSON is an open standard file format, and data interchange format, that uses human-readable text to store and transmit data objects consisting of attribute–value pairs and array data types. It is a very common data format, with a diverse range of applications, such as serving as a replacement for XML in AJAX systems.
In our use case – we are assuming Enrollment files are ingested (EFFY files) in the JSON format directly to Snowflake.  
ELT layer defines the mapped attributes for JSON attributes with data types. The following diagram displays mapping between JSON attribute and stage layer. The Stage layer is used to process data for the destination layer with additional transformation.

.. figure:: images/jsonIngestion.jpg
   :align: center


Institutional Charges 
---------------------
Institutional Charges [IC] dataset is in the ORC formt. The Optimized Row Columnar (ORC) file format provides a highly efficient way to store Hive data. Using ORC files improves performance when Hive is reading, writing, and processing data. It ideally stores data in compact form and enables skipping over irrelevant parts without the need for large, complex, or manually maintained indices.
In our use case, – we are assuming Institutional Charge text files are ingested (ICAY files) in HDFS. They are processed through Hive. Output of the big data processing (ORC files) are used to load in Snowflake.
ELT layer defines the schema for ORC file with data types. The following diagram displays mapping between the ORC attribute and the stage layer. The stage layer is used to process data for the destination layer with additional transformations and normalization.


.. figure:: images/orcIngestion.jpg
   :align: center


Admission data
---------------------
Admission data [ADM] files are available in the Parquet data format. 
Parquet, an open-source file format for Hadoop stores nested data structures in a flat columnar format. 
Compared to a traditional approach where data is stored in a row-oriented approach, Parquet is more efficient 
in terms of storage and performance. It is especially useful for queries that read specific columns from a wide table. 
Parquet provides optimizations to speed up queries. Parquet is a far more efficient file format than CSV or JSON, supported by many 
data processing systems. Spark SQL provides support for both reading and writing Parquet files that automatically
capture the schema of the original data. The following diagram lays out the architecture from data source to Parquet file.
In our use case – we are assuming - IPEDs admission data text files are ingested (ADM files) in HDFS and processed through the Spark. 
Output of the spark processing (Parquet files) are used to process in Snowflake.
ELT layer defines the schema for Parquet file with data types. The following diagram displays mapping between 
the Parquet attribute and the stage layer. The stage layer is used to process data for the final destination layer with additional transformations.

.. figure:: images/parquetIngestion.jpg
   :align: center


Reference/lookup data
---------------------
Code value lookup files are CSV formatted. These files are directly ingested into Snowflake staging from source system. 
ELT layer defines the schema for the CSV file with data types. 

Summary
---------------

Data from the source systems goes through multiple data processing layers in transactional and big data platforms. That results into 
varieties of data files in the multiple data formats. We need to map those data files into analytical meta data layer. This chapter
summarize all data formats we will be dealing in the processing layer of analytical data platform.

.. note::
   Mapping between the source system and Snowflake meta data is available in appendix. 
   It is also available to view at:

   https://versatiledp.github.io/ExperimentsSnowflake/Mapping/AcademicInstitute.htm
   https://versatiledp.github.io/ExperimentsSnowflake/Mapping/Enrollment.htm
   https://versatiledp.github.io/ExperimentsSnowflake/Mapping/InstitutionCharges.htm
   https://versatiledp.github.io/ExperimentsSnowflake/Mapping/AdmissionStat.htm
   https://versatiledp.github.io/ExperimentsSnowflake/Mapping/CodeValue.htm


.. raw:: pdf

   PageBreak
   


CSV Ingestion
======================================================

Academic Institution 
---------------------

The academic institution file contains the high level information about institutions in the country by year. 
The following files contain the information about the institution for the year 2017, 2018 and 2019 respectively. 

    - HD2017.csv
    - HD2018.csv 
    - HD2019.csv


We will learn how to

    - Use ingested CSV files from the staged Snowflake region
    - Transform data using Snowflake JavaScript stored procedure
    - Call stored procedure
    - Build views in Snowflake
    - Manage schema drifts from one file to another file
    - Build processes so schema drift does not create impdiments with old historical data
    - Combine column attributes  to JSON objects as part of transformation
    - Perform SQL MERGE using hash key
 
In staged files, data can be located in an internal stage (in a Snowflake database) 
or an external named stage (Amazon S3, Google Cloud Storage, or Microsoft Azure). 
Staged files are identified by the @ character prefixed to the name.
Academic institution data files are received in CSV format and a staged file is created. 

In this case, **@IPEDS_HD**  is the staged file containing information about the Academic institutions.
From the staged files which are created out of CSV format, data is retrieved using SQL command SELECT $<column_number>. 
The **<column_number>** represents the order in which the columns are available in the text file starting with the number 1. 
In other words, $1 refers to first column values, $2 refers to second column values, and $n refers to nth column values from the staged file.
For example: SELECT $1, $2 FROM @IPEDS_HD;
The above command returns the first and second column values of the Institution file.

Here is the output from @IPEDS_HD using the SQL command. Header record from the input file is presented as data record:



.. code-block:: sql

    SELECT $1,$2,$3,$4,$5,$6,$7,…….,$71,$72 FROM @IPEDS_HD;

.. figure:: images/IPEDTableData.jpg
   :align: center

To ignore header records from loading into the data table, we can skip the header information row in staged file.

.. code-block:: sql
 
    SELECT $1,$2,$3,$4,$5,$6,$7,…….,$71,$72 
    FROM @IPEDS_HD WHERE metadata$file_row_number > 1;

.. figure:: images/IPEDTableData_AA.jpg
   :align: center
  
The attributes from the the staged file do not hold column name and column types. We need to provide schema on read
for each of the $1, $2,,, $n columns in the staged file @IPEDS_HD. This is accompolished using mapping documents 
between staged layer and column names in OD tables.


OD table for Academic Institution
------------------------------------------

Operational data  (OD) tables are physical tables and populated from the corresponding staged files. 
ELT process will copy data from Staged files with 
very little transformation and no metadata to  OD tables  and descriptive column names. We can add more columns to 
the OD table if necessary. We have added  3 additional columns like AcademicYear, 
IngestedFileName, and RowNumber to the OD table for using them in the ETL/ELT process and audit purposes.

Once the column mapping is clearly defined, we have to populate our 
operational data  table for academic institutions called **od_AcademicInstitution** 
out of this staged file **@IPEDS_HD**.

Here is the SQL command to create an OD table **od_AcademicInstitution**.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\01_CR_od_AcademicInstitution.sql


The additional columns, AcademicYear, IngestedFileName, and RowNumber 
are basically derived from the metadata of the staged file.

We used the metadata columns **METADATA$FILENAME**, and **METADATA$FILE_ROW_NUMBER** for populating the new columns.

.. code-block:: rst

    Please note that, for the files having header rows, column names will be in ROW_NUMBER 1 
    and data rows start from the second row.

The following Snowflake SQL will get us the filename and row number from the staged file.


.. code-block:: sql

    SELECT METADATA$FILENAME, METADATA$FILE_ROW_NUMBER
    FROM @IPEDS_HD;

Here is the mapping for additional columns in the case of academic institution staged files.

.. code-block:: rst

    AcademicYear ⇒ SUBSTRING(METADATA$FILENAME,3,4)
    IngestedFileName ⇒ METADATA$FILENAME
    RowNumber  ⇒ METADATA$FILE_ROW_NUMBER

Snowflake view and stored procedure
------------------------------------------

We have introduced a Snowflake view and a stored procedure in between 
the staged files and operational data (OD) table to manage data processing using  extract load and transfer (ELT). 
The view is built on top of the staged file to do necessary mapping and create
appropriate column names for the result set. Then the stored procedure consumes this 
view and loads the OD table for a specific year.


Managing metadata of staged file
------------------------------------------

Now that, the academic institution information for years 2017, 2018, and 2019 is available in the staged file.
The view **v_od_AcademicInstitution** is added using the mapping table defined earlier for the staged file @IPEDS_HD. 
Later, this view will be used for populating the staging table.

3 additional columns (AcademicYear, IngestedFileName, and RowNumber) required for the staging table 
are also defined in the view. 

Here is the Snowflake command to create the view.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\02_CR_v_od_AcademicInstitution.sql


** If the internal staged area has multiple files, the view created on staged will have access to all underlying files ingested.**

In Snowflake, views behave just like tables and we can retrieve the records for a
given academic year using the view v_od_AcademicInstitution  as below. As we ingested three files from the source system, 
@IPEDS_HD will have data from all academic years. 

.. code-block:: sql

    SELECT TOP 100 * FROM v_od_AcademicInstitution  
    WHERE AcademicYear = 2017;

.. code-block:: sql
    It is also possible for ETL process to ingest data for one year, process.
    Drop the ingested file from the staged area and process the next.


Stored procedure for OD table load
------------------------------------------

Stored procedures are created to perform one or more DML operations. 
It is nothing but the group of SQL statements that accepts some input and performs some task and may or may not returns a value.
In Snowflake, stored procedures are similar to functions. 
Stored procedures can be executed multiple times.

Stored procedures allow us to extend Snowflake SQL by combining it with JavaScript.
It is created with a CREATE PROCEDURE command and is executed with a CALL command.

We’ve created a process to load the OD table od_AcademicInstitution data from the view, 
one year’s data at a time. For this purpose, we have created a stored procedure 
**pr_od_AcademicInstitution_Load**. This stored procedure takes a parameter 
YEAR and retrieves the data from the view **v_od_AcademicInstitution**  for that year. 
The retrieved records are then inserted into the OD table.

Here is the script for creating the Snowflake stored procedure pr_od_AcademicInstitution_Load.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\03_CR_od_AcademicInstitution_Load.sql



Orchestration engine needs to delete old data from OD table and load data.

The OD table is truncated and data for 2017 is loaded as shown below.

.. code-block:: sql

    TRUNCATE TABLE od_AcademicInstitution;
    CALL pr_od_AcademicInstitution_Load(2017::FLOAT); 

Now, the OD table is filled with Academic Institution data for year 2017.

.. code-block:: sql

    SELECT TOP 50 * FROM od_AcademicInstitution;

Here is the sample data retrieved using the SQL given above.

.. figure:: images/academicInstitute.jpg
   :align: center


Academic Institution data processing
------------------------------------------

Using the Academic Institution files, we have built a dimension table called **AcademicInstitution**. 
This dimension table will be used by fact tables at the servicing layer in forthcoming chapters. 

In general, a dimension table contains keys columns and other attributes which are associated with the business key.  
A system-generated key (primary key) is used to uniquely identify a row in the dimension. 
This key is also known as a surrogate key. In a dimensional data warehouse architecture, 
the surrogate key is placed in the fact table and a foreign key is defined to establish the relationship between the two tables.

In the case of the dimension table AcademicInstitution, we have defined the 
column **AcademicInstitutionUniqueDWSID** as the primary key. 
This primary key gets a unique sequence value for every record inserted. 
The automatic sequencing is achieved in Snowflake by defining **SEQUENCE** and **NEXTVAL**.

Here is the script for creating the sequence SEQ_IPEDS.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\00_CR_SeqHD.sql 


Following Snowflake SQL script is used for creating the AcademicInstitution dimension. 

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\04_CR_AcademicInstitution.sql


.. note::
    The VARIANT columns (CarnegieClassification, WebAddress) are added to the dimension table.  
    These columns are used to store JSON data in the table. 
    The DATETIME columns RecordCreateDateTime and RecordUpdateDateTime are added for auditing data Upserts.

 
Carnegie Classification transformation
"""""""""""""""""""""""""""""""""""""""""""""

We have grouped together certain columns from the OD table. 
The following columns belong to CarnegieClassification and are stored in the dimension table in JSON format. 
Hence, the column CarnegieClassification is created with the VARIANT data type.

    - CarnegieClassification2000
    - CarnegieClassification20052010Basic
    - CarnegieClassification2015Basic
    - CarnegieClassification2015UndergraduateProgram
    - CarnegieClassification2015GraduateProgram
    - CarnegieClassification2015UndergraduateProfile
    - CarnegieClassification2015EnrollmentProfile
    - CarnegieClassification2015SizeSetting


Web Address transformation
"""""""""""""""""""""""""""""""""""""""""""""

Similarly, we have grouped together below columns holding various web addresses 
under the name WebAddress and stored in a JSON format. Thus another VARIANT data type column WebAddress is also created.

    - InstitutionsWebAddress
    - AdmissionsOfficeWebAddress
    - FinancialAidOfficeWebAddress
    - OnlineApplicationWebAddress
    - NetPriceCalculatorWebAddress
    - VeteransMilitaryServiceTuitionPoliciesWebAddress
    - StudentRightAthleteGraduationRateWebAddress
    - DisabilityServicesWebAddress



Load Dimension table
-----------------------
Once the dimension table is created, we need to load the dimension table **AcademicInstitution**
with data from the operational data table **od_AcademicInstitution**. 
This is made possible by using the Snowflake MERGE command.  

The MERGE command uses source and target tables for the merge operation. 
In our case, the OD table **od_AcademicInstitution** is the source 
table and the dimension table **AcademicInstitution** is the target table. 
The business key is required for MERGE and for dimension **AcademicInstitution** '
business key is **InstitutionIdentifier**.  

In Snowflake MERGE works similar to standard SQL MERGE. 
We join the source and target using the business key. 
Then we compare the new data in the OD table against the existing column values in the dimension table. 
If any of the column values are updated in the staging table, that value is updated in the dimension table. 
If the business key **InstitutionIdentifier** is not present in the dimension table (new records in the staging table), 
that record is inserted into the dimension table. 

**We are using the slowly changing Type 1 concepts from datawarehouse load for merging AcademicInstitution.**

.. figure:: images/merge.png
   :align: center

We have created a stored procedure **pr_AcademicInstitution_Load** for merging data from the staging 
table **od_AcademicInstitution** to the dimension table **AcademicInstitution**. 
The script to create the stored procedure is given below.

.. code-block:: sql
   :include: \code\SQL\AcademicInstitution\05_CR_pr_AcademicInstitution_Load.sql 

And the stored procedure is called to load AcademicInstitution table from OD.

.. code-block:: sql  

    CALL pr_AcademicInstitution_Load(2017::FLOAT) ;
    -- Check data on underlying table
    SELECT * FROM AcademicInstitution

The following diagram shows all the data being processed and AcademicInstitution has The data as desired

.. figure:: images/IPEDTableData_BB.JPG
   :align: center

Schema drift
-----------------------

Structural changes in the incoming data files are very common in a data warehouse environment. 
In our case from 2018, we have noticed the following structural 
changes in the input files generated from source system.

The following new columns are added to files from 2018 onwards.

    - CarnegieClassification2018Basic
    - CarnegieClassification2018UndergraduateProgram 	
    - CarnegieClassification2018GraduateProgram    	
    - CarnegieClassification2018UndergraduateProfile	
    - CarnegieClassification2018EnrollmentProfile
    - CarnegieClassification2018SizeSetting
 
And the following columns are deleted from the academic institution files from 2018 onwards.
   
    - CarnegieClassification2015UndergraduateProgram 	
    - CarnegieClassification2015GraduateProgram    	
    - CarnegieClassification2015UndergraduateProfile	
    - CarnegieClassification2015EnrollmentProfile
    - CarnegieClassification2015SizeSetting
 
Also, there are some changes in position of a few existing columns in the file. 
 
Our goal is to process both old and new files using the same load process to load **od_AcademicInstitution**.
We have added the new columns to the OD table using ALTER TABLE as below. 

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\06_AL_od_AcademicInstitution.sql

 
Also, we updated the view **v_od_AcademicInstitution**  to include newly added columns using the Snowflake UNION command as below. 
This has made it possible to ingest files with different structures for 2017, and more recent years.

The deleted columns are populated with NULL values for the year greater than 2017. 
Newly added columns are mapped with NULL for the year 2017.

We have to modify the following Snowflake data objects to incorporate the above structural 
change along with table change in the tables **od_AcademicInstitution** and **AcademicInstitution** .

1.	View : v_od_AcademicInstitution 
2.	Stored procedure for loading staging table : pr_od_AcademicInstitution_Load
3.	Stored procedure for processing dimension table : pr_AcademicInstitution_Load


**Modifying the view from the staged file**

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\07_AL_v_od_AcademicInstitution.sql


**Modifying stored procedure for the OD table load**

Modifying pr_od_AcademicInstitution_Load to accommodate the structural changes in the files 2018 and onwards.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\08_AL_od_AcademicInstitution_Load.sql



We can load the academic institution data for 2018 and 2019 into the staging table as below.

.. code-block:: sql

    TRUNCATE TABLE od_AcademicInstitution;
    CALL pr_od_AcademicInstitution_Load(2018::FLOAT);  
    CALL pr_od_AcademicInstitution_Load(2019::FLOAT); 

We can also load multiple files into same OD table and use the specific academic year to continue next process
For this book, we would not truncate the OD table from one academic year to the next. 
In a real life scenario, we would be processing only one year of data at a time.

.. code-block:: sql 

    CALL pr_od_AcademicInstitution_Load(2018::FLOAT);  
    CALL pr_od_AcademicInstitution_Load(2019::FLOAT); 


*Because of the change in the source file, it is necessary to manage metadata as well as changes in ELT and the transformation layer. If data is processed without the change in code, it will result into bad attribute value mapping.*    


The stored procedure pr_AcademicInstitution_Load is modified to accommodate the new columns added.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\09_AL_AcademicInstitution_Load.sql 


We are able to ingest all the files from 2017 through 2019 with the above schema drift code changes

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\20_LD_od_AcademicInstitution_History.sql 


We can process dimension by calling the stored procedure as below.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\30_LD_AcademicInstitution_History.sql 
 
 

MERGE using hash key
-----------------------

In the above stored procedure, we joined the source and target table using the business key (InstitutionIdentifier). 
When a matching record is found, then we compare individual 
columns between source and target tables to find any column values that are changed in the source.

In this section, we are trying to compare source and target column values by using hash keys. 
Hash keys are created using hash functions. In a hash function, a plain text of arbitrary size is
mapped to fixed-size values called hash keys or bytes. Hash functions use various hashing algorithms 
for generating hash keys. MD5, SHA1, SHA2 etc. are some of the commonly used algorithms.

We created a custom function called **Hash_Key** which accepts an array of text values. 
These values are concatenated using another function **Concat_Columns** and returns a string value. 
This concatenated string is passed to the hash function SHA1 to generate the hash key out of it.
Function Concat_Columns is created as below.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\10_CF_ConcatColumns.sql 


Here are the scripts for creating the function Hash_Key.


.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\11_CF_HashKey.sql 


We created a hash key by combining all column values of each row in the source and target tables. 
And, then these hash keys are compared to check if any change occurred in the source data.
If there is a change, the corresponding target record is updated with the source record.

The modified stored procedure is given below.

.. code-block:: sql
   :include:  \code\SQL\AcademicInstitution\12_CR_AcademicInstitutionMergeHashByte_Load.sql 



Summary
-----------------------

In this chapter we have travelled through the process involved in loading and processing academic institution files 
for the years 2017, 2018, and 2019. We created a staged file and a corresponding operational data table to store 
institution details by year.We discussed in detail about the views and stored procedures used to populate 
the dimension table using the Snowflake MERGE command. We also demonstrated how to group various 
columns in the staged file using JSON string and VARIANT data types. Furthermore, we discussed the 
transformation logic to handle the schema drifts in the incoming data files. 
Finally, we demonstrated yet another approach to MERGE dimension table using hash keys.

   
.. note::
   Code available to download at 
   
   https://github.com/versatiledp/ExperimentsSnowflake/tree/main/source/code/SQL/AcademicInstitution

 


.. raw:: pdf

   PageBreak
   

JSON Ingestion
======================================================

Enrollment 
---------------------

This section covers the information about enrollments in various institutions for the years 2017, 2018 and 2019. 
The enrollments are categorized by race, ethnicity and sex.
The data files for enrollments are in the JSON format and the staged file is invoked using @IPEDS_EFFY. 


We will learn about

    - JSON ingestion
    - Transforming data using the Snowflake JavaScripts stored procedures
    - Calling stored procedures
    - 

.. code-block:: sql
   :include:  \code\SQL\Enrollment\01_SL_IPEDS_EFFY.sql


Operational data (OD) table for Enrollment
---------------------------------------------------------------
For storing the enrollments from the staged file, we have added a operational table called **od_Enrollment**. 
Here is the CREATE command for the staging table.

.. code-block:: sql
   :include:  \code\SQL\Enrollment\02_CR_od_Enrollment.sql


Once the operational data table is created, 
we will be populating the staging table with data from the source system, coming in the JSON file.
We are using the stored procedures based ELT based approach for loading the OD tables. 
The stored procedure **pr_od_Enrollment_Load** used a parameter YEAR. 
Here is the Snowflake script for creating the stored procedure **pr_od_Enrollment_Load**.

.. code-block:: sql
   :include:  \code\SQL\Enrollment\03_CR_pr_od_Enrollment_Load.sql


We can load data for all these 3 years. Here are the commands to call the stored procedure.

.. code-block:: sql
   :include:  \code\SQL\Enrollment\04_LD_od_Enrollment_History.sql


Enrollment load
---------------------
We have created a table **Enrollment** in the servicing or consuming layer. 
Here is the script for creating the table Enrollment.

.. code-block:: sql
   :include:  \code\SQL\Enrollment\05_CR_Enrollment.sql


The stored procedure **pr_Enrollment_Load** is used for loading
this servicing layer table. The stored procedure loads data for specific years based on the parameter passed in to it. 
Each time this stored procedure is called, it deletes the records from the Enrollment table 
for that year and re-inserts them from od_Enrollment for the year.

While loading data into the servicing layer load ,data transformation is added. 
The imputation variable determines whether the value in the numeric field
is imputed or reported. We are interested to understand the total number of imputed variable counts, 
and reported variable counts.
Those values are stored in 
**VariablesReportedCount** and  **VariablesImputedCount**. Based on the values of  VariablesReportedCount 
and VariablesImputedCount, the percentage of imputed or reported 
is calculated. Those percentages are stored in **ImputationVarPercent**, and **ReportedVarPercent**

Here is the script for stored procedure **pr_Enrollment_Load**. 
The additional data transformation needed to get the above variables, are computed in the same SP.

.. code-block:: sql
   :include:  \code\SQL\Enrollment\06_CR_pr_Enrollment_Load.sql



The above SP is called to process data for 2017,2018, and 2019. 
The code below shows the call to the 06_CR_Enrollment_Load for loading all historical files.


.. code-block:: sql
   :include:  \code\SQL\Enrollment\07_LD_Enrollment_Histroy.sql


Summary
---------------------------------------------------------------
In this chapter we have discussed the enrollments in various institutions by year. 
We talked about creating a OD table from data files which are in a JSON format.
We also discussed the servicing layer table and the (ETL code) stored procedure to load the servicing layer from the staging table. 

.. note::
   Code available to download at 
   
   https://github.com/versatiledp/ExperimentsSnowflake/tree/main/source/code/SQL/Enrollment

 


.. raw:: pdf

   PageBreak
   
ORC Ingestion 
======================================================

Institutional Charges 
------------------------

This section covers the data ingestion about tuition fees charged by the numerous institutions for
various courses and segment of students admitted during 2017, 2018 and 2019 academic years. 
The data files received on institutional charges  are in ORC format. 
Dataset also categorize fees for graduate programs 
like Medicine, Dentistry, Pharmacy, Law etc. as different attributes within academic institution charge records.

Fees are also categorized for In-State and Out-of-State students.
Books/supply , campus room, publication charges as well as other expenses are also available here.

The information in this large file is broadly categorized into 4 groups described below.

Institutional Charge (General)
""""""""""""""""""""""""""""""""""""""""""""""

This cross section of attributes cover average tuition/required fees, per-credit fees charged by educational institiutes.
Fees varies significantly from state to state, public vs private, and ranking of institiutes (demand vs supply).

Institutional Charge by academic branch
""""""""""""""""""""""""""""""""""""""""""""""

The details of fees by academic subjects like Chiropractic, Dentistry, Medicine, Optometry, OsteopathicMedicine, Pharmacy, Podiatry, VeterinaryMedicine, and Law by various institutions 
for in-state and out-of-state students are available in this section.

Institutional Charge by residency type
""""""""""""""""""""""""""""""""""""""""""""""

The residency type determines different fees structure in public 
uninversities for the same courses. Normally in-state students
are charged less than out-of-state. These set of attributes will provide insight around those variations.
 

Institutional Charge by category
""""""""""""""""""""""""""""""""""""""""""""""

Various fees like On-Campus boarding, books/supplies, and other
on-campus expenses are available in this section of the file.



We will learn how to 

    - Use ingested ORC files from the staged Snowflake region
    - Transform data using the Snowflake JavaScript stored procedures
    - Call the  stored procedures 
    - Perform transformation using Unpivot and JSON conversation


Staged File for Institution Charges
-------------------------------------

The staged file **@IPEDS_IC** is used for keeping track of various institution charges. 
We can retrieve the details of a particular year as below.  
Here is the Snowflake SQL query to select all the rows for the year 2017 from staged ORC data. 
Please note that the columns are selected using **$1 :<column_name>**. 
This is because data files used are in ORC format. The staged file is a denormalized data structure, where different attributes
are added to represent differences in these fee structures. While loading data to the final servicing layer, data architects may
consider to normlize these attributes in a meaningful way. In this book, we have followed some normalization while data is loaded
into the servicing layer.

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\01_SL_IPEDS_IC.sql


Operational data (OD) table for Institutional charge 
----------------------------------------------------------------------------

OD table od_InstitutionalCharge is added  to load institutional charge data from the staged file.  
OD table contains all the columns from the staged file @IPEDS_IC. 
The Snowflake script for creating the OD table is shown below. 

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\02_CR_od_InstitutionalCharge.sql



The attributes of the operational data table is categorized into the 3 groups shown below along with a core group.

Charges by academic branch
--------------------------------------

These cover different professional colleges 

**Chiropractic**

    - Chiropractic_InStateTuition
    - Chiropractic_InStateRequiredFees
    - Chiropractic_OutOfStateTuition
    - Chiropractic_OutOfStateRequiredFees

**Medicine**

    - Medicine_InStateTuition
    - Medicine_InStateRequiredFees
    - Medicine_OutOfStateTuition
    - Medicine_OutOfStateRequiredFees

Charges by Residency Type
--------------------------------------

**InDistrictTuition**

    - PublishedInDistrictTuitionYear0
    - PublishedInDistrictTuitionYear1
    - PublishedInDistrictTuitionYear2
    - PublishedInDistrictTuitionFeesYear3

**InDistrictFees**

    - PublishedInDistrictFeesYear0
    - PublishedInDistrictFeesYear1
    - PublishedInDistrictFeesYear2
    - PublishedInDistrictFeesYear3

**InDistrictTuitionFees**

    - PublishedInDistrictTuitionFeesYear0
    - PublishedInDistrictTuitionFeesYear1
    - PublishedInDistrictTuitionFeesYear2
    - PublishedInDistrictTuitionFeesYear3

**InStateTuition**	

    - PublishedInStateTuitionYear0
    - PublishedInStateTuitionYear1
    - PublishedInStateTuitionYear2
    - PublishedInStateTuitionYear3


Institutional Charge by Category
----------------------------------------------------------------------------

**	BooksSupplies	**	

    - BooksSuppliesYear0
    - BooksSuppliesYear1
    - BooksSuppliesYear2
    - BooksSuppliesYear3
    
**	OnCampusRoomBoard	**	

    - OnCampusRoomBoardYear0
    - OnCampusRoomBoardYear1
    - OnCampusRoomBoardYear2
    - OnCampusRoomBoardYear3

Stored procedure for OD table load
----------------------------------------------------------------------------

Stored procedure , called **pr_od_InstitutionalCharge_Load** is added
to load the OD table with institutional 
charge records from the staged file.

This stored procedure takes the YEAR parameter and retrieves the records 
from the staged file for that year.

Here is the script for creating the stored procedure.

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\03_CR_pr_od_InstitutionalCharge_Load.sql


The procedure is called for processing various years as below. 

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\04_LD_od_InstitutionalCharge_History.sql


We have added following the entities to the servicing layer. These entities will be populated in the transformation layer.

    - InstitutionalCharge
    - InstitutionalChargeByAcademicBranch
    - InstitutionalChargeByResidencyType
    - InstitutionalChargeByCategory 

Servicing layer data structure
--------------------------------------

While processing institutional charge dataset, datatables are normalized from OD layer and mapped to the servicing layer.

The following script are be used to create these tables.  

InstitutionalChargeEntity:

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\05_CR_InstitutionalCharge.sql


InstitutionalChargeByAcademicBranchEntity: 

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\06_CR_InstitutionalChargeByAcademicBranch.sql 



InstitutionalChargeByResidencyTypeEntity:

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\07_CR_InstitutionalChargeByResidencyType.sql 


InstitutionalChargeByCategoryEntity: 

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\08_CR_InstitutionalChargeByCategory.sql 



Unpivot data to load into the Servicing layer
--------------------------------------------------

In our case, data is stored in the OD layer in a pivoted record structure. We will need to unpivot these attributes to load
the servicing layer.

We can unpivot data structure in a traditional SQL environment by creating a union on underlying attributes. 

Another flexible approach
will be to store JSON object in the OD layer and simplify the load. As new categories (attributes) are added, it is easy to manage.
Data structures are easy to digest for programmers. We will elaborate on this in the next section.


The following views are created to transform columns to rows. These views will be used in load stored procedures.

Institutional Charge by Academic Branch
""""""""""""""""""""""""""""""""""""""""""""""

v_od_InstitutionalChargeByAcademicBranch is created to convert the columns from underlying OD dataset to rows for data processing layer. 
The view outputs one record per academic branch like chiropractic, medicine, OsteopathicMedicine, .... Attribute columns from source are  
categorized into tution and fees. 

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\13_CR_v_od_InstitutionalChargeByAcademicBranch.sql


Institutional Charge by Residency Type
""""""""""""""""""""""""""""""""""""""""""""""

v_od_InstitutionalChargeByResidencyType is similar to the v_od_InstitutionalChargeByAcademicBranch. It is also converting columns to rows
for data processing layer.
This view output one record per: in district, in state, out of state residency type. The view provides tution information for complete course work like
year 0 tution, year 1 tution.

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\15_CR_v_od_InstitutionalChargeByResidencyType.sql


Institutional Charge by Category
""""""""""""""""""""""""""""""""""""""""""""""

v_od_InstitutionalChargeByCategory is built with the same concepts as v_od_InstitutionalChargeByResidencyType and v_od_InstitutionalChargeByAcademicBranch.
This view provides more granular records to detail out expenses for books supplies, rent, food, and other types of expenses during college education.

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\17_CR_v_od_InstitutionalChargeByCategory.sql


Data load into the Servicing layer
--------------------------------------------------

We will be using the OD table od_InstitutionalCharge and the above 3 views to finally land data to our destination. 
There are four stored procedures, that use these data sources and land it. All these SP will take academic year
parameter. For the given year, they will delete existing data from the destination tables and move data from the OD layer.

The following stored procedures code is used to create these objects.


Institutional Charge (general) load
""""""""""""""""""""""""""""""""""""""""""""""

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\11_CR_pr_InstitutionalCharge_Load.sql 


Institutional Charge by academic branch load
""""""""""""""""""""""""""""""""""""""""""""""

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\14_CR_pr_InstitutionalChargeByAcademicBranch_Load.sql


Institutional Charge by residency type load
""""""""""""""""""""""""""""""""""""""""""""""

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\16_CR_pr_InstitutionalChargeByResidencyType_Load.sql


Institutional Charge By category load
""""""""""""""""""""""""""""""""""""""""""""""

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\18_CR_pr_InstitutionalChargeByCategory_Load.sql
 



Now data for all these entities  associated with institutional charge 
is loaded with a calling these stored procedures as below:

.. code-block:: sql
   :include:  \code\SQL\InstitutionalCharge\19_LD_IC_Charges_History.SQL

   

Summary
---------------------

Using ORC files in Snowflake is as easy as using CSV files. We can perform variety of transformations while moving data from
the landing layer to the servicing layer.

  
     
  
.. note::
   Code available to download at 
   
   https://github.com/versatiledp/ExperimentsSnowflake/tree/main/source/code/SQL/InstitutionalCharge



.. raw:: pdf

   PageBreak



Parquet Ingestion
======================================================

Admission statistics 
---------------------

The admission statistics contain information about the number of applicants by various categories, 
admission test scores, SAT/ACT percentile scores and so on. 
These statistics are stored by institution and year. 
Admission statistics files are received in the Parquet format.


We will learn how to

    - Use ingested Parquet files from the staged Snowflake region
    - Transform data using the Snowflake JavaScript stored procedures
    - Call the stored procedures  

The staged file for keeping track of institution admission statistics is **@IPEDS_ADM**. 
Please note that the columns are selected using **$1 :<column_name>**. 
This is because data files used are in the Parquet format.
We can retrieve the details of a particular year as below.

.. code-block:: sql
   :include:  \code\SQL\AdmissionStat\01_SL_IPEDS_ADM.sql


OD table for Admission Statistics
--------------------------------------

To keep track of admission statistics by year,
we have created an operational data table called **od_AdmissionStat**. 
We have added 3 additional columns AcademicYear, IngestedFileName, and RowNumber for this OD table as well.
When processing the Parquet data, all the partitions from the staged location are used. The staged location metadata also contains 
part of the partition key. In our case the first 4 characters contains year in a YYYY format.

Snowflake SQL script for creating this table given below.

.. code-block:: sql
   :include:  \code\SQL\AdmissionStat\02_CR_od_AdmissionStat.sql



Stored procedure for staging table
--------------------------------------

Once the staging table is created, we need to populate the table 
with admission statistics data for each year from the staged file. 
For that purpose, we’ve created a stored procedure called **pr_od_AdmissionStat_Load**.
This stored procedure takes the YEAR parameter and retrieves the records from the staged file for that year. 
The parameter YEAR is compared against the first 4 characters of **METADATA$FileName** of the staging file 
and retrieves records for that year.

Here is the script for creating the stored procedure. 

.. code-block:: sql
   :include:  \code\SQL\AdmissionStat\03_CR_pr_od_AdmissionStat_Load.sql


The OD table is truncated and loaded by calling the stored procedure as below.

.. code-block:: sql
   :include:  \code\SQL\AdmissionStat\04_LD_od_AdmissionStat_History.sql


**In a production environment, we would process one file at a time all the way through the servicing layer.**


Admission Statistics Servicing layer 
--------------------------------------

Servicing layer tables or fact tables are mostly final layer tables 
in a data warehouse environment. These tables are directly consumed 
by the end users or visualization team. We have created a fact table for 
admission statistics called **AdmissionStat**. This table has links to the
dimension table **AcademicInstitution** using a star schema in 
dimensional modelling architecture. This is made possible by 
adding the surrogate key column (**AcademicInstitutionUniqueDWSID**) 
of the dimension table AcademicInstitution to the fact table AdmissionStat.

Here is the script for creating the table AdmissionStat in Snowflake.

.. code-block:: sql
   :include:  \code\SQL\AdmissionStat\05_CR_AdmissionStat.sql


Admission Statistics Load data 
--------------------------------------
The service layer/fact table **AdmissionStat** is loaded from the OD table **od_AdmissionStat** by year. 
Every time this fact table is updated, it’s loaded with the latest data for that year. 
We need to take enough precautions to ensure the quality of data being loaded in the ETL process. 
Therefore, we have to delete old data loaded for that year and new data is loaded from the OD table.
We’ve created a stored procedure **pr_AdmissionStat_Load** using the Snowflake. Inside the JavaScript, 
we have used 2 variables, **sql_DelCommand** and **sql_Command**. 
The variable sql_DelCommand contains the SQL commands to delete the records from the fact table for the year passed to the stored procedure. 
The other variable sql_Command contains the main logic for updating the fact table for that year.

We've used a **LEFT OUTER JOIN** with AcademicInstitution on InstitutionIdentifier to get the matching 
surrogate key from the dimension table AcademicInstitution. 
In any case, if we couldn't find the matching record, we are updating the AcademicInstitutionUniqueDWSID in the fact table with -1. 
To achieve this, we have used Snowflake **IFNULL** command as **IFNULL(D.AcademicInstitutionUniqueDWSID, - 1)**

Here is the Snowflake stored procedure for processing the AdmissionStat table.

.. code-block:: sql
   :include:  \code\SQL\AdmissionStat\07_LD_AdmissionStat_Histroy.sql


Summary
--------------------------------------
In this chapter, we have gone through the data load process for the Parquet files in Snowflake. 
Data processing architecture for the Parquet file format, reamins very similar to CSV; 
Snowflake makes it easy to consume this data.  The admission 
statistics table is used by various institutions. 
We loaded 3 years of admission statistics in the stage file. From the 
staged file, we created and loaded the OD table and later, the fact table for the servicing layer.

.. note::

   Code available to download at 
   
   https://github.com/versatiledp/ExperimentsSnowflake/tree/main/source/code/SQL/AdmissionStat


.. raw:: pdf

   PageBreak
   


Semi-structured data Load
======================================================
 
Lookup entities    
--------------------

Files generated at the source system contains code value pair records for multiple lookup tables.
Sample data from the source system is shown in the  below table.
 
.. list-table:: Source system data layout
   :widths: 20 60
   :header-rows: 1

   * - CodeName 
     - TableData 
   * - stabbr 
     - 'AL'='Alabama' 
   * - stabbr 
     - 'AK'='Alaska'  
   * - stabbr 
     - 'AZ'='Arizona'   
   * - ACT   
     - 'A'='Active - institution active' 
   * - ACT   
     - 'N'='New (active) - added during the current year'
   * - ACT   
     - 'R'='Restore (active) - restored to the current universe'
 

The first column helps to identify the target entity
and the second column is actual data row for the target tables. Data for multiple columns is 
separated by an **'='** sign.

In the above example

The StateAbbrevation table should be loaded with two attributes. The attribute values for the first row are **'AL'** and 
**'Alabama'**.
Similarly AccountStatus should be loaded with the the values **'A'** and **'Active - institution active'**

Data is available for processing in the staged file **@IPEDS_CM**.

The following query are used to get rows from staged file 

.. code-block:: sql
   :include:  \code\SQL\CodeMapping\01_SL_IPEDS_CodeMapping.sql


We have added a mapping table **CodeDestinationTable** that provides destination table name for the code.

The following script will create and load the CodeDestinationTable table.

.. code-block:: sql
   :include:  \code\SQL\CodeMapping\01_CR_CodeDestinationTable.sql


The **CodeDestination** table is used to create the corresponding OD table, and 
service layer tables; furthermore, it is used for populating data dynamically from the staged file to the OD tables.

We concatenated **od_** to the table name column from the CodeDestination entity. In the **pr_od_CodeMapping_Load** stored procedure
we check if the corresponding table exist in the Snowflake. If the table is there, it is truncated and the staged file data for
that code is loaded into the specific OD table. If the table is missing then, a new table is added. The newly added table is used
to load data.

The combination of **CodeDestinationTable** table and **@IPEDS_CM** staged file is used to populate mulitple operational data stores.
Example when the code column content has value **stabbr** then destination table will be **od_StateAbbreviation**. The
content of TableData column from **@IPEDS_CM** where **$1 = 'StateAbbreviation'** 
will be used to populate **od_StateAbbreviation**.


The following script outlines this process.

.. code-block:: sql
   :include:  \code\SQL\CodeMapping\03_CR_pr_od_CodeMapping_Load.sql


On executing the above stored procedure, following tables are added and loaded with data from single staged file.

    - od_InstitutionStatus 
    - od_CoreBasedStatisticalArea
    - od_CBSATypeMetropolitan
    - od_CarnegieClassification2005
    - od_StateCongressionalDistricID
    - od_InstitutionControl
    - od_CountryCode
    - **........**
    - od_IdentificationNumberMultiCampusOrganization
    - od_MultiinstitutionMulticampusOrganization
    - od_FIPSStateCode
    - od_GraduateOffering
    - od_NewEnglandArea
    - od_EconomicBureauRegion
    - od_TitleIVEligibilityCode
    - od_InstitutionOpenGeneralPublic


Merge data 
--------------------------

Once data is loaded into the operational data zone, we use a similar approach to merge data to the final servicing layer entities. 
We check underlying entities dynamically, any missing entities are added. Data is merged from the OD to these entities using 
**pr_CodeMapping_Load**

.. code-block:: sql
   :include:  \code\SQL\CodeMapping\04_CR_pr_CodeMapping_Load.sql


The complete loading of code mapping data is achieved by calling these stored procedures as below.

.. code-block:: sql
   :include:  \code\SQL\CodeMapping\05_LD_pr_CodeMapping_Load.sql 


Summary
----------------

There is lot of flexibility built in Snowflake to manage variety of data needs. We learned, how to load data from the 
single file into the multiple entities with different set of attributes. 
With JavaScript based stored procedures, we can consume variety of data layout programmatically.

 
.. note::
   Code available to download at 
   
   https://github.com/versatiledp/ExperimentsSnowflake/tree/main/source/code/SQL/CodeMapping


.. raw:: pdf

   PageBreak
   


Pipeline Orchestration
======================================================
 
Workflow    
--------------------- 

In this chapter, we are going to administar all the Snowflake transformation through single point of entry without using any 
third party tools.

The steps laid out here, are easy to navigate, provide full control over sequencing, and can be easily extended to accommodate 
other needs as per different requirements. 

We have added a workflow table.
Attributes on this table are easy to understand for the end users. 

    - StageName - Description of the pipeline
    - ProcedureName - Name of stored procedure to be called
    - SourceTableName - Input table used in Snowflake data transformation 
    - TargetTableName - Destination table for data used in the above procedure
    - ExecutionOrder - What is sequence for this step to be executed

The following script is used to create the **IPEDS_Workflow** table

.. code-block:: sql
   :include:  \code\SQL\Workflow\01_CR_IPEDS_Workflow.sql


We can easily enhance the framework from this chapter with additional functionality, like actions on success and failure 
and parallel processing.
The results of workflow steps are stored in the **IPEDS_Audit** table.
The IPDS_Audit table holds information around steps executed, including: 

    - row count from the source table
    - row count before the process in the destination table
    - row count after the step execution in the destination table
    - date and time when the step finishes execution

.. code-block:: sql
   :include:  \code\SQL\Workflow\02_CR_IPEDS_Audit.sql 

    
The following script is used to populate  **IPEDS_Workflow**. 
The script list the Stored procedure (SP) getting called, the input table name, 
the output table name, and sequence number to execute this SP.

.. code-block:: sql
   :include:  \code\SQL\Workflow\03_LD_IPEDS_Workflow.sql 

 
The following code can help to understand the steps that will be executed 

.. code-block:: sql
   :include:  \code\SQL\Workflow\04_SL_IPEDS_Workflow.sql 


The stored procedure **pr_IPEDS_Process** is used as a master controller. 
When we call this controller the following steps are executed.

    - All data from the **IPEDS_Workflow** table is read in order of ExecutionOrder
    - For each of the rows
    -            It will record the row count from the source and destination table.
    -            It will execute the stored procedure in the ProcedureName attribute
    -            It will record the row count on the destination table.

.. code-block:: sql
   :include:  \code\SQL\Workflow\05_CR_pr_IPEDS_Process.sql 


These row counts, with additional information are written to IPEDS_Audit.

The stored procedure **pr_od_Truncate** is written to truncate all the OD tables before we load data.
Code for the stored procedure **pr_od_Truncate** is given below.

.. code-block:: sql
   :include:  \code\SQL\Workflow\06_CR_pr_od_Truncate.sql 

The combination of truncate OD table and load data from IPEDS dataset in the staging files is performed.
with the following code


.. code-block:: sql
   :include:  \code\SQL\Workflow\07_LD_IPED_All.sql 



 
Summary
----------------

In this chapter we learned how to build workflow management tool using Snowflake. This process helps to navigate through data lineage across
staged files, operational data tables, and servicing layer entities. The process outlined in this chapter will work for the cases where we have 
single source tables and moving to single destination table. 
We can easily enhance this to accommodate data lineage tracking for multiple input to one destination 
, and one input to mulitple destination.

 
.. note::
   Code available to download at 
   
   https://github.com/versatiledp/ExperimentsSnowflake/tree/main/source/code/SQL/Workflow 


