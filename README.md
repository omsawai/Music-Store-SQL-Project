# Music Store Data Analysis Using SQL

## Project Overview

This project focuses on analyzing a digital music store database using MySQL. The database contains information about customers, employees, artists, albums, tracks, genres, playlists, and sales transactions.

The objective is to explore the relational database, solve business-oriented questions, and extract meaningful insights related to customer purchasing behavior, music preferences, and store sales performance using SQL queries.

## Database Schema

The project uses a relational database named `p2musicdb`, consisting of 11 interconnected tables:

- Employee
- Customer
- Invoice
- Invoice Line
- Track
- Playlist
- Playlist Track
- Artist
- Album
- Media Type
- Genre

## Project Objectives

- Analyze customer purchasing patterns and spending behavior.
- Identify top-performing customers and sales locations.
- Explore invoice distribution across different countries.
- Identify customers interested in specific music genres.
- Analyze artists based on their music catalogue contributions.
- Examine track durations and catalogue characteristics.
- Solve business-oriented questions using SQL queries.

## Tools & Technologies

- **Database:** MySQL
- **IDE:** MySQL Workbench
- **Query Language:** SQL

## SQL Concepts Used

- Database and Table Creation
- Data Manipulation (INSERT, UPDATE, DELETE)
- Data Retrieval (SELECT)
- Filtering using WHERE
- Sorting using ORDER BY
- Aggregate Functions (COUNT, SUM, AVG)
- GROUP BY and HAVING
- Joins (INNER JOIN, LEFT JOIN)
- Subqueries
- LIMIT

## Business Insights

The analysis explores multiple business areas:

- **Geographical Analysis:** Identifies countries with the highest invoice volume and cities generating the highest revenue.
- **Revenue Analysis:** Highlights high-value transactions and identifies top-spending customers.
- **Customer Analysis:** Explores customer purchasing behavior and music genre preferences.
- **Artist Analysis:** Identifies artists with the largest number of Rock tracks in the catalogue.
- **Catalogue Analysis:** Examines track durations and music catalogue characteristics.
- **Organizational Analysis:** Identifies the employee at the top of the reporting hierarchy.

These insights demonstrate how SQL can transform relational database records into useful business information that supports customer segmentation, revenue analysis, marketing decisions, and catalogue evaluation.

## How to Run the Project

1. Install MySQL and MySQL Workbench.
2. Open and execute `Schema_Queries.sql` to create the database, tables, and populate the data.
3. Open and execute `Question_Queries.sql` to perform the analysis.
4. Refer to `music_store_outputs.pdf` to view the query execution results.

## Project Results

The SQL queries demonstrate practical applications of relational database analysis, including customer segmentation, revenue analysis, geographical sales analysis, and music catalogue exploration.
