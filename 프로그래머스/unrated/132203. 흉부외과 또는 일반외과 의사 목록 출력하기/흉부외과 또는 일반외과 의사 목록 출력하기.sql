-- 코드를 입력하세요
SELECT 
    D.DR_NAME, 
    D.DR_ID, 
    D.MCDP_CD, 
    DATE_FORMAT(D.HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR D
WHERE D.MCDP_CD = 'CS' OR D.MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;
