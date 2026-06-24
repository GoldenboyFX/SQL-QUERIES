# Climate Data Analysis -SQL 
This folder contains SQL queries for the ** Global Climate & Energy Transition 2000-2026** dataset

## Files Overview
### 1. 'energy_decoupling_by_years.sql'
-**Purpose**: Analyzes **absolute decoupling** - years where CO2 emissions decreased while the economy continued to grow.
-**Key Metrics**: Emission decoupling years, percentage of decoupling years per country.
### 2. 'renewable share analysis.sql'
-**Purpose**: Examine the speed of shift from fossil fuels to renewables.
-**Key Metrics**: Renewables share trends, year-over-year changes.
### 3. 'co2_emissions_by_country_year.sql'
**Purpose**: General co2 emissions trends by country and year.

**Skills Demonstrated**: Window Functions, CTEs, Conditional aggregation

## Key Findings
### Absolute decoupling( Emissions while economy grows)
**Top Perfoming Countries** (by % of years with emission reduction):
| Rank | Country   | Decoupling   | Total years  |
|------|-----------|--------------|--------------|
| 1    | Ukraine   | **45.3%**    | 53           |
| 2    | Germany   | **43.4%**    | 53           |
| 3    | UK        | **43.4%**    | 53           |
| 4    | Denmark   | **41.5%**    | 53           |
| 5    | Sweden    | **39.6%**    | 53           |

**Insight**:- European countries are leading in **absolute decoupling**
            - Germany and Uk have successfully reduced emissions in over **43%**
### Renewable enrgy share
- Germany's renewable energy share increased from \~**21.13% (2020)** to **30.78%(2026)**.
- Strong year-over-year growth visible in recent years (especially 2024-2026).
- Fosil fuel share is gradually declining as renewables accelerate.

### co2 Emissions Trends
- china remains the largest emitter but shows varying yearly changes.
- Intensity (kg co2 per GDP) is being tracked to measure efficiency improvements.

