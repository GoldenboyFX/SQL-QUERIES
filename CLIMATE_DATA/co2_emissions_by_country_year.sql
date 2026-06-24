SELECT 
    year,
	country,
	co2_emissions_mt,
	co2_intensity_kg_per_gdp_usd,
	LAG(co2_emissions_mt) OVER (PARTITION BY country ORDER BY year) AS prev_emissions
FROM co2_emissions
WHERE country IN ('Germany','China','United States','India', 'France')
ORDER BY country, year;

