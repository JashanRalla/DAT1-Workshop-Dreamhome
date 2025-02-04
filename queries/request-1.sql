.open dreamhome.sqlite
.mode column

-- 1.1
-- SELECT COUNT(DISTINCT propertyno)
-- FROM viewing 
-- WHERE viewdate BETWEEN 2013-05-01 AND 2013-05-31;

-- 1.2
SELECT COUNT(position), SUM(salary)
FROM staff
WHERE position = "Manager";


-- 1.3


