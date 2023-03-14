##1]Show records of 'male' patient from 'southwest' region.
select * from campusx.insurance
where gender='male' and region='southwest';

##2]Show all records having bmi in range 30 to 45 both inclusive...

select * from campusx.insurance
where bmi between 30 and 45;

##3]Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.
select min(bloodpressure) as MinBP,max(bloodpressure) as MaxBP from campusx.insurance
where smoker='yes';

##4]Find no of unique patients who are not from southwest region
select distinct PatientID from campusx.insurance
where region!='southwest';

##5]Total claim amount from male smoker
select sum(claim) as Total_claim_amount from campusx.insurance
where smoker='yes' and gender='male';


##6]Select all records of south region.
select * from campusx.insurance
where region like 'south%';

##7]No of patient having normal blood pressure. Normal range[90-120]
select distinct count(PatientID) from campusx.insurance
where bloodpressure between 90 and 120;


##8]No of pateint belo 17 years of age having normal blood pressure as per below formula -
##BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)
##Note: Formula taken just for practice, don't take in real sense.



##9]What is the average claim amount for non-smoking female patients who are diabetic?
select avg(claim) from campusx.insurance
where gender = 'female' and diabetic ='yes' and smoker='no';

##10]Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.
UPDATE insurance
set claim = 5000
where PatientID in (1,2,3,4);

select * from insurance;

##11]Write a SQL query to delete all records for patients who are smokers and have no children.

delete from insurance
where smoker='yes' and children=0;
