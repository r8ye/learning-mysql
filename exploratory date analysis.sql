SELECT *
FROM layoffs_staging2;

-- company with the highest layoffs
SELECT 
	MAX(total_laid_off)
FROM layoffs_staging2;

SELECT *
FROM layoffs_staging2
WHERE total_laid_off = 12000;

SELECT MAX(percentage_laid_off)
FROM layoffs_staging2;

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;

SELECT 
	company,
    SUM(total_laid_off) AS sum_layoffs
FROM layoffs_staging2
GROUP BY company
ORDER BY sum_layoffs DESC;


-- industry with the most layoffs
SELECT 
	industry,
    SUM(total_laid_off) AS sum_layoffs
FROM layoffs_staging2
GROUP BY industry
ORDER BY sum_layoffs DESC;


-- country with the most layoffs
SELECT 
	country,
    SUM(total_laid_off) AS sum_layoffs
FROM layoffs_staging2
GROUP BY country
ORDER BY sum_layoffs DESC;


-- layoffs by year
SELECT 
	YEAR(`date`) AS `year`,
    SUM(total_laid_off) AS sum_layoffs
FROM layoffs_staging2
GROUP BY `year`
ORDER BY `year`;


-- layoffs by stage
SELECT 
	stage,
    SUM(total_laid_off) AS sum_layoffs
FROM layoffs_staging2
GROUP BY stage
ORDER BY sum_layoffs DESC;


-- rolling total
WITH rolling_total_cte AS (
	SELECT 
		SUBSTRING(`date`, 1, 7) AS `month`,
		SUM(total_laid_off) AS sum_layoffs
	FROM layoffs_staging2
	WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
	GROUP BY `month`
	ORDER BY `month`
)
SELECT 
	`month`,
    sum_layoffs,
    SUM(sum_layoffs) OVER(ORDER BY `month`) AS rolling_total
FROM rolling_total_cte;










