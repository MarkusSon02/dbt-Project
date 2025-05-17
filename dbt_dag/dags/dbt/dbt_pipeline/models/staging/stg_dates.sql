{{ config(materialized='table') }}

{{dbt_utils.date_spine(
    start_date="to_date('1990-01-01')",
    end_date="to_date('2030-12-31')",
    datepart="day"
) }}