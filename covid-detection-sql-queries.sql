Create Database CovidDetection;
use CovidDetection;
select * from covid_modified;

-- Task1 : Find the number of corona patients who faced shortness of breath.
select count(*) from covid_modified 
where Test_result = 'positive' and Shortness_of_breath = 'TRUE';

-- Task2: Find the number of negative corona patients who have fever and sore_throat. 
select count(*) from covid_modified 
where Test_result = 'negative' and Fever = 'TRUE' and Sore_throat = 'TRUE';

-- Task 3: Group the data by month and rank the number of positive cases.
select mid(Test_date, 4, 2) as Test_Month, count(ID) as Total_Positive_Cases
from covid_modified 
where Test_Result = 'positive'
group by Test_Month
order by count(ID) desc;

-- Task 4: Find the female negative corona patients who faced cough and headache.
select count(*) as No_of_Female_patients from covid_modified 
where Sex = 'Female' and 
Test_result = 'negative' and 
Cough_symptoms = 'TRUE' and 
Headache = 'TRUE';

-- Task 5: How many elderly corona patients have faced breathing problems?
select count(*) as No_of_Elderly_patients from covid_modified 
where Age_60_above = 'Yes' and 
Test_result = 'positive' and 
Shortness_of_breath = 'TRUE';

-- Task 6: Which three symptoms were more common among COVID positive patients?
SELECT 'Headache' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Headache = 'True'
UNION ALL
SELECT 'Shortness_of_breath' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Shortness_of_breath = 'True'
UNION ALL
SELECT 'Sore_throat' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Sore_throat = 'True'
UNION ALL
SELECT 'Fever' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Fever = 'True'
UNION ALL
SELECT 'Cough_symptoms' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Cough_symptoms = 'True'
Order BY count desc
limit 3;

# displays individual count of each symptom separately
SELECT
  COUNT(CASE WHEN Headache = 'True' THEN 1 END) AS Headache,
  COUNT(CASE WHEN Shortness_of_breath = 'True' THEN 1 END) AS Shortness_of_breath,
  COUNT(CASE WHEN Sore_throat = 'True' THEN 1 END) AS Sore_throat,
  COUNT(CASE WHEN Fever = 'True' THEN 1 END) AS Fever,
  COUNT(CASE WHEN Cough_symptoms = 'True' THEN 1 END) AS Cough_symptoms
FROM covid_modified
WHERE Test_result = 'positive';

-- Task 7: Which symptom was less common among COVID negative people?
SELECT 'Headache' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'negative' AND Headache = 'True'
UNION ALL
SELECT 'Shortness_of_breath' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'negative' AND Shortness_of_breath = 'True'
UNION ALL
SELECT 'Sore_throat' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'negative' AND Sore_throat = 'True'
UNION ALL
SELECT 'Fever' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'negative' AND Fever = 'True'
UNION ALL
SELECT 'Cough_symptoms' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'negative' AND Cough_symptoms = 'True'
Order BY count;


-- Task 8: What are the most common symptoms among COVID positive males whose
--  known contact was abroad?
SELECT 'Headache' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Headache = 'True' AND sex = 'MALE' AND known_contact = 'Abroad'
UNION ALL
SELECT 'Shortness_of_breath' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Shortness_of_breath = 'True' AND sex = 'MALE' AND known_contact = 'Abroad'
UNION ALL
SELECT 'Sore_throat' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Sore_throat = 'True' AND sex = 'MALE' AND known_contact = 'Abroad'
UNION ALL
SELECT 'Fever' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Fever = 'True' AND sex = 'MALE' AND known_contact = 'Abroad'
UNION ALL
SELECT 'Cough_symptoms' AS Symptom, COUNT(*) AS Count
FROM covid_modified
WHERE Test_result = 'positive' AND Cough_symptoms = 'True' AND sex = 'MALE' AND known_contact = 'Abroad'
Order BY count desc;
