Create Table Student(ID, name, GPA, photo) # Creating Student table

Create Table College(name string, state char(2), enrollment integer) # Creating College table

# Ad-hoc queries in high-level language
# – All students with GPA > 3.7 applying to Stanford and MIT only
# – All engineering departments in CA with < 500 applicants
# – College with highest average accept rate over last 5 years

Select Student.ID
From Student, Apply
Where Student.ID=Apply.ID
And GPA>3.7 and college=‘Stanford’