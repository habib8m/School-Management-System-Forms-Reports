
SELECT SUB.SUBJECT_CODE "Subject Code", SUB.SUBJECT_NAME "Subject Name", 
ED.EXAM_DATE "Date", E.FIRST_NAME||' '||E.LAST_NAME "Examiner Name",
TO_CHAR(ED.START_TIME, 'HH:MM:SS')||'-'||TO_CHAR(ED.END_TIME, 'HH:MM:SS') "Time"
FROM SUBJECTS SUB, EXAMS_D ED, EXAMS_M EM, EMPLOYEES E
WHERE SUB.SUBJECT_ID = ED.SUBJECT_ID
AND EM.EXAM_M_ID = ED.EXAM_M_ID
AND E.EMPLOYEE_ID = ED.EXAMINER_ID
AND EM.CLASS_ID = &CLASS_ID
AND EM.EXAM_NAME = '&EXAM_NAME'

















