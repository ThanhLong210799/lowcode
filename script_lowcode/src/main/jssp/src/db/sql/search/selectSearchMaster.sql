SELECT candidate_id,
full_name,
phone_number,
TO_CHAR(birth_day, 'YYYY/MM/DD') as birth_day,
language,
CASE 
WHEN candidate.gender = '1' THEN '女'
WHEN candidate.gender = '0' THEN '男'
END AS gender,
introduction_person,
note,
user_name,
CASE delete_flag
    WHEN '1' then '〇'
    WHEN '0' then ''
    ELSE ''
END AS delete_flag,
CASE 
WHEN candidate.apply_position_developer = 1 THEN 'O'
WHEN candidate.apply_position_developer = 0 THEN ''
END AS apply_position_developer,
CASE 
WHEN candidate.apply_position_tester = 1 THEN 'O'
WHEN candidate.apply_position_tester = 0 THEN ''
END AS apply_position_tester
FROM candidate
WHERE
'1'='1'
/*IF full_name*/
AND candidate.full_name LIKE '%'|| /*full_name:string*/ ||'%'
/*END*/
/*IF user_name*/
AND candidate.user_name LIKE '%'|| /*user_name:string*/ ||'%'
/*END*/
/*IF delete_flag == 0*/
AND candidate.delete_flag = 0
/*END*/
ORDER BY candidate_id DESC