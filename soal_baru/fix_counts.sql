-- number_of_questions = jumlah soal sebenarnya (trigger insert hanya mengisi default per kategori)
UPDATE tests t SET number_of_questions = c.n
FROM (SELECT test_id, count(*) n FROM questions GROUP BY 1) c
WHERE c.test_id = t.id AND t.number_of_questions IS DISTINCT FROM c.n;
