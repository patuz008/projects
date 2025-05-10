# Earthquake Data Pipeline Guide

This repository contains a guide for setting up an Azure data engineering pipeline to process and analyse earthquake data from the USGS Earthquake API.

**Key Components:**

* **Data Ingestion:** Azure Data Factory automates data retrieval.
* **Data Processing:** Databricks cleans and transforms data using a medallion architecture (Bronze, Silver, Gold).
* **Data Storage:** Azure Data Lake Storage (ADLS) stores data at each stage.
* **Data Analysis:** Synapse Analytics enables querying and reporting.

The guide provides step-by-step instructions for:

* Setting up Azure resources (Databricks, Storage Account, Data Factory, Synapse).
* Configuring data access and credentials.
* Creating and executing Databricks notebooks.
* Orchestrating the pipeline with Azure Data Factory.
* Querying and analysing data with Synapse Analytics.

This setup enables efficient and scalable processing of earthquake data for informed decision-making.

![Azure end to end data engineering project](Azure End to End Data Engineering Project/Notebooks/Trash/azure data engineering project workflow.png)


Inspired by [Luke J Byrne](https://www.youtube.com/watch?v=lyp8rlpJc3k)
