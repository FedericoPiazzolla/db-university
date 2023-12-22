-- 1 Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`), COUNT(*) AS `num_students`
FROM `students`
GROUP BY YEAR(`enrolment_date`);
-- lo utiliziamo per filtrare i risultati della nuova tabella creata con group 
HAVING `num_students` > 1000 --> filtrerà gli studenti che sono maggiori di 1000


-- 2 Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_address`, COUNT(*) as `tot_teacher`
FROM `teachers`
GROUP BY `office_address`

-- 3 Calcolare la media di ogni appello d'esame
SELECT `exam_id`, ROUND(AVG(`exam_student`.`vote`), 2) AS `avg_vote` --> con ROUND approssimiamo a 2 cifre dopo la virgola con , 2
FROM `exam_student`
GROUP BY `exam_id`

-- 4 Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(*) AS `num_dgr`
FROM `degrees`
GROUP BY `department_id`