-- 코드를 입력하세요
WITH TOTAL_SALES AS (
    SELECT 
        BOOK_ID,
        SUM(SALES) AS SALES
    FROM BOOK_SALES
    WHERE SALES_DATE LIKE '2022-01%'
    GROUP BY BOOK_ID
)

SELECT 
    B.AUTHOR_ID,
    A.AUTHOR_NAME,
    B.CATEGORY,
    SUM((SALES * B.PRICE)) AS TOTAL_SALES
FROM BOOK B
LEFT JOIN AUTHOR A
ON B.AUTHOR_ID = A.AUTHOR_ID
LEFT JOIN TOTAL_SALES TS
ON B.BOOK_ID = TS.BOOK_ID
GROUP BY B.CATEGORY, A.AUTHOR_NAME
ORDER BY B.AUTHOR_ID ASC, B.CATEGORY DESC;