# 🏥 Hospital Data Analysis (SQL)

## Overview
Analyzed operational data for **10 hospitals** across **10 cities** and **10 departments** using SQL — covering **100 records**, **9,347 patients**, and **$2.72M in total medical expenses** for the year 2023.

## Tools Used
- SQL (PostgreSQL syntax) | Joins, Aggregations, Date Functions

## Key Insights
- **Total patients treated: 9,347** across 10 hospitals.
- **Healing Touch** had the highest total medical expenses (**$352,178**), while **Fortis Care** had the highest daily average expense per patient stay (**$4,385/day**).
- **Urology was the busiest department** by patient volume (1,766 patients), followed by Neurology (1,229) and ENT (1,064); **Cardiology had the fewest patients** (544).
- **Neurology had the longest average stay** (9.25 days), while **Dermatology had the shortest** (5.6 days).
- **Jaipur treated the most patients** of any city (1,505), followed by Ahmedabad (1,467) and Lucknow (1,264).
- The **longest single hospital stay was 15 days** (Apollo Health, April 2023).
- **September 2023 had the highest monthly medical expenses** ($341,284), suggesting a seasonal spike.

## SQL Techniques Used
- Aggregate functions (`SUM`, `AVG`, `COUNT`) with `GROUP BY`
- Date arithmetic for length-of-stay calculations
- `TO_CHAR()` for monthly trend reporting
- Top-N analysis with `ORDER BY` / `LIMIT`

## How to Use
1. Run `hospital_data.sql` to create the `Hospital_Data` database and `hospital` table.
2. Load `Hospital_Data.csv` into the table.
3. Run the 10 queries to reproduce the insights above.

## Author
**Sanjana Malki**
