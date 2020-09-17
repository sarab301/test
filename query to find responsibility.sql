SELECT  DISTINCT frt.responsibility_name, frt.description, fr.responsibility_key
    FROM fnd_responsibility_tl frt, fnd_user_resp_groups furg,  fnd_responsibility fr
   WHERE fr.application_id = frt.application_id
     AND furg.responsibility_id = frt.responsibility_id
     AND frt.LANGUAGE = 'US'
     AND frt.responsibility_name LIKE '%UK%BEL%CE%'
ORDER BY frt.responsibility_name