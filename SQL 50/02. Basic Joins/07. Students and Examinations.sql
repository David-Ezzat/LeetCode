SELECT st.student_id, st.student_name, sub.subject_name, COUNT(Exs.subject_name) [attended_exams]
FROM (Subjects sub CROSS JOIN Students st) LEFT OUTER JOIN Examinations Exs
ON st.student_id = Exs.student_id AND Exs.subject_name = sub.subject_name
GROUP BY st.student_id, st.student_name, sub.subject_name
