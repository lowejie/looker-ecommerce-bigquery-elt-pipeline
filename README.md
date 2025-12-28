# 1. Project Overview

A dbt project built on TheLook E-commerce BigQuery public dataset designed to explore modern data modeling as well as extract, load and transform (ELT) workflows. This project covers the use of data models including staging, fact and intermediate models. Limitations for this project
includes small-scale pipeline (rowcount of over 100k), lack of incremental models and orchestration.

Below shows the high-level flowchart depicting the architecture of the project.

![Project Architecture Flowchart](./looker-ecommerce-elt-pipeline-flowchart.drawio.png)


# 2. Tech Stack and Environment

- Programming Languages: SQL, Jinja
- Data Modeling: dbt-core v1.11.2
- Cloud Warehouse: BigQuery
- IDE: Pycharm 2025.3.1
- Version Control: Git/GitHub
- OS: Windows 11
- Packages: dbt_utils

# 3. Data Sources and Schema


