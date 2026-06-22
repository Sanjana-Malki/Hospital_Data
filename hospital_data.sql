CREATE DATABASE Hospital_Data;

CREATE TABLE hospital(
	hospital_name VARCHAR(100) NOT NULL,
	location VARCHAR(100) NOT NULL,
	department VARCHAR(100) NOT NULL,
	doctors_count INT NOT NULL,
	patients_count INT NOT NULL,
	admission_date DATE NOT NULL,
	discharge_date DATE NOT NULL,
	medical_expenses NUMERIC(10,2) NOT NULL
);

SELECT * FROM HOSPITAL;

-- 1. Total Number of Patients 
select sum(patients_count) as total_patient
from hospital;

-- 2. Average Number of Doctors per Hospital
select hospital_name, round(avg(doctors_count),2) as avg_doctors
from hospital
group by hospital_name;

-- 3. Top 3 Departments by Patients
select department,count(patients_count)as patient_count
from hospital
group by department
order by patient_count desc
limit 3;

-- 4. Hospital with Maximum Medical Expenses
select hospital_name, sum(medical_expenses) as total_expenses
from hospital
group by hospital_name
order by total_expenses desc
limit 1;

-- 5. Daily Average Medical Expenses per Hospital
select hospital_name, round(sum(medical_expenses)/ sum((discharge_date) - (admission_date)),2) as avg_daily_expense
from hospital
group by hospital_name;

-- 6. Longest Hospital Stay
select hospital_name, admission_date, discharge_date, (discharge_date - admission_date) as stay_length
from hospital
order by stay_length desc
limit 1;

-- 7. Total Patients Treated per City
select location, sum(patients_count)as patient_count
from hospital
group by location 

-- 8.Average Length of Stay per Department
select department, round(avg(discharge_date - admission_Date),2) as avg_stay_days
from hospital
group by department
order by avg_stay_days desc;

-- 9. Department with Lowest Number of Patients
select department, sum(patients_count)as total_patients
from hospital
group by department
order by total_patients 
limit 1;


-- 10. Monthly Medical Expenses Report
select to_char(admission_date, 'yyyy-mm') as month,
		sum(medical_expenses) as medical_expense
from hospital
group by month
order by month;