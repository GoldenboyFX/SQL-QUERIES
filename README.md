# Spotify Streaming History Analysis

**SQL PORTFOLIO PROJECT 1** | PostgreSQL

Analysis of Spotify Streaming Service From MAVEN ANALYTICS

## Project Overview
- Imported large CSV dataset into PostgreSQL
- Performed data quality assesment
- Extracted key meaningful business/consumer insights Using SQL
- prepare data for visualization

## Tools & Technologies
- **Data Import**: Python (pandas + SQLAlchemy) 
- **Database**: PostgreSQL 18 + pgAdmin 4
- **Analysis**: SQL (CTEs. Window Functions, Aggregation, String Manipulation)
- **Visualization**: pgAdmin Graph Visualiser 

## Data Quality Summary
- Total streams: **149,860**
- Very clean dataset (minor missing values)
     - 'reason_start': 143 rows (0.10%)
     - 'reason_end': 117 rows(0.08%)

## Key Insights
### 1.TOP Artist (2024 vs 2023)
**2024 (Top year)**
- **The Beatles** - 511 plays
- **John Mayer** - 439 plays
- **The Killer** - 423 plays
**2023 (previous year)**
- **The beatles** - 730 plays
- **The killers** - 531 plays
- **Bob Dylan** - 348 plays
**Observation**: The Beatles remained the most listened artist across both years, showing strong consistency in music taste by listeners.
### 2. Most Played Songs
| RANK | Track Name             | Artist          | play count | Total Minutes |
|------|------------------------|-----------------|------------|---------------|
| 1    | Ode To The Mets        | The Strokes     | 207        | 1,123.9       |
| 2    | In the Blood           | John Mayer      | 181        | 640.5         |
| 3    | Dying Breed            | The Killers     | 166        | 603.0         |
*(Full list available in SQL folder)*
### 3. Skip Rate
- **Total streams**: 149,860
- **Skipped songs**: 7,869
- **Skip Percentage**: **5.25%**
### 4. Listening Patterns by Time of Day
- Peak listening occurs between **(20:00 - 00:00)** from evenings into midnight
- Lowest listening occurs around **(10:00 - 12:00)** from 10am to 12pm
  *(see graph visualise)*

## SQL skills demonstrated
- Data Import troubleshooting (GUI vs Copy vs python)
- Complex Common Table Expressions (CTEs)
- Window functions ('RANK()')
- String manipulation and date extraction
- Aggregation and percentage calculations
- Data Quality Analysis

  **Author**: [ EGHOSA LEO OKUNBOR] (https://github.com/GoldenboyFX)
  **Portfolio Project** - Spotify EDA with SQL
