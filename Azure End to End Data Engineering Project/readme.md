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


### Project Workflow

Here's a diagram of the data pipeline:

![azure data engineering project workflow](https://github.com/user-attachments/assets/df7a2489-78a9-40e9-a76b-d6bb5c8aa748)



Inspired by [Luke J Byrne](https://www.youtube.com/watch?v=lyp8rlpJc3k)
