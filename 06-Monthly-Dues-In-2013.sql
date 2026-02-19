USE AdventureWorks2022
GO

WITH MonthlySelling AS (
    SELECT
        MONTH(OrderDate) AS [Month],
        CAST(SUM(TotalDue) AS decimal) AS [Income of This Month],
        CAST(LAG(SUM(TotalDue), 1) OVER (ORDER BY MONTH(OrderDate)) AS decimal) AS [Income of Prev. Month]
    FROM Sales.SalesOrderHeader
    WHERE YEAR(OrderDate) = 2013
    GROUP BY MONTH(OrderDate)
)

SELECT
    [Month],
    [Income of This Month],
    [Income of Prev. Month],
    CAST(([Income of This Month]-[Income of Prev. Month])*100/[Income of Prev. Month] as nvarchar) + '%' AS [Monthly Change] --New Feature: Monthly Changes
FROM MonthlySelling;
