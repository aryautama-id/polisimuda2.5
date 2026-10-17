SELECT 'opsi!=5', count(*) FROM (SELECT question_id FROM answers GROUP BY 1 HAVING count(*)<>5) x
UNION ALL SELECT 'opsi kembar/kosong', count(*) FROM (SELECT question_id FROM answers GROUP BY question_id, lower(btrim(description)) HAVING count(*)>1 OR min(btrim(description))='') y
UNION ALL SELECT 'kunci!=1 (non-TKP)', count(*) FROM (SELECT a.question_id FROM answers a JOIN questions q ON q.id=a.question_id JOIN tests t ON t.id=q.test_id WHERE t.category<>'personality' GROUP BY 1 HAVING count(*) FILTER (WHERE a.is_correct)<>1) z
UNION ALL SELECT 'TKP poin bukan 1..5', count(*) FROM (SELECT a.question_id FROM answers a JOIN questions q ON q.id=a.question_id JOIN tests t ON t.id=q.test_id WHERE t.category='personality' GROUP BY 1 HAVING string_agg(a.point::text,'' ORDER BY a.point)<>'12345') w
UNION ALL SELECT 'tanpa pembahasan', count(*) FROM questions WHERE coalesce(btrim(explanation),'')=''
UNION ALL SELECT 'tanpa kode', count(*) FROM questions WHERE sub_material_code IS NULL;
