
SELECT ALL EMP_AT_M.AT_DATE, EMP_AT_D.EMPLOYEE_ID, EMPLOYEES.FIRST_NAME||' '||EMPLOYEES.LAST_NAME NAME, 
EMPLOYEES.EMAIL, JOBS.JOB_TITLE, EMP_AT_D.STATUS
FROM EMP_AT_M, EMP_AT_D, EMPLOYEES, JOBS
WHERE EMP_AT_D.AT_M_ID = EMP_AT_M.AT_M_ID
AND EMP_AT_D.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID
AND EMPLOYEES.JOB_ID = JOBS.JOB_ID
AND EMP_AT_M.AT_DATE = TO_DATE(:DATE, 'DD-MM-YYYY') 