SELECT
    year,
	country,
	renewables_total_pct,
	fossil_total_pct,
	(renewables_total_pct- LAG(renewables_total_pct)
	    OVER(PARTITION BY country ORDER BY year)) AS pct_change
FROM energy_mix_yearly
WHERE country IN ('Germany', 'China', 'United States')
ORDER BY renewables_total_pct, year;