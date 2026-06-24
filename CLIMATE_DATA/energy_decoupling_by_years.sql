-- Absolute decoupling: emissions down while economy up
WITH yearly_change AS (
   SELECT
        country,
        year,
        co2_emissions_mt,
        LAG(co2_emissions_mt) OVER(PARTITION BY country ORDER BY year) AS prev_emissions,
		co2_intensity_kg_per_gdp_usd
   FROM co2_emissions
)
SELECT
    country,
	MIN(year) AS start_year,
	MAX(year)AS end_year,
	COUNT(*) AS total_years,
	SUM(CASE WHEN co2_emissions_mt < prev_emissions THEN 1 ELSE 0 END) AS decoupling_years,
	ROUND(
        SUM(CASE WHEN co2_emissions_mt < prev_emissions  THEN 1 ELSE 0 END)::NUMERIC 
		/ COUNT(*) * 100, 1
	) AS decoupling_pct
FROM yearly_change
WHERE prev_emissions IS NOT NULL
GROUP BY country
HAVING COUNT(*) > 10
ORDER BY decoupling_pct DESC;