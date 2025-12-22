Building a Data Warehouse from Scratch
🎯 Project Overview

This project represents my journey into data/analytics engineering — from raw data to a fully-fledged data warehouse, orchestrated end-to-end. The goal was to design and build a scalable, maintainable analytical pipeline that:

Ingests raw data (EL)

Loads raw data into Snowflake

Applies transformations using the Medallion Architecture (Bronze → Silver → Gold)

Implements Slowly Changing Dimensions (SCD) using dbt snapshots

Models clean, analytics-ready data for reporting and analysis

Orchestrates pipelines using Dagster

This project demonstrates a real-world data engineering skillset: data ingestion, transformation, modeling, testing, orchestration — all version-controlled and reproducible.

🧱 Architecture & Components
📦 Tech Stack

Snowflake — data warehouse for raw, staged, and production data

dbt — transformations, testing, data modeling, and SCD tracking using snapshots

Dagster — orchestration, scheduling, and pipeline management

GitHub — version control and project documentation

🧊 Medallion Architecture (Bronze → Silver → Gold)

This project follows the Medallion Architecture — a layered approach to organizing data in a warehouse:

Bronze (Raw Layer)
Raw ingested data from source systems, stored with minimal transformation for auditability.

Silver (Cleaned / Standardized Layer)
Data cleansing, standardization, deduplication, and business rule application using dbt models.

Gold (Business / Analytics Layer)
Final business-ready facts and dimensions optimized for dashboards, analytics, and reporting.

This architecture improves clarity, reproducibility, scalability, and change management in analytical projects.

🧾 Slowly Changing Dimensions (SCD) with Snapshots

This project incorporates SCD historization using dbt snapshots stored under the /snapshots directory.

Snapshots allow us to track changes in dimension records over time — useful for understanding evolving entities such as customers, products, subscriptions, etc.

Uses dbt’s snapshot configuration

Compares row values over time

Creates version history

Supports auditing and time-travel style analytics

This is a key feature of modern data warehouses, allowing analytics teams to answer questions like:

What did this record look like last month?

How have customer attributes changed over time?

🚀 Workflow: From Raw Data to Analytics

Load raw data into Snowflake (Bronze layer)

Apply Silver transformation models in dbt

Cleansing, normalization, and business logic

Apply Gold models for final marts

Fact and dimension tables, optimized for BI

Run dbt snapshots to preserve SCD history

Orchestrate all steps in Dagster

📚 What I learnt from This Project

Modern data warehousing design using the Medallion (Bronze / Silver / Gold) architecture

How to build dimension and fact tables in Snowflake

How to implement Slowly Changing Dimensions (SCD) using dbt snapshots

Best practices in transformation, modular SQL, testing, and data quality

Version-controlled, orchestrated pipelines using Dagster
