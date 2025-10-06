--funktsioonid
SElect * from DimEmployee

--Tabelisisev‰‰rtusega funktsioon e Inline Table Valued function (ILTVF)
CREATE FUNCTION fn_ILTVF_GetEmployees()
Returns Table
as
Return (Select EmployeeKey, FirstName, 
Cast(BirthDate as Date) as DOB
From dbo.DimEmployee);
--k‰ivita funktsiooni
SELECT * FROM fn_ILTVF_GetEmployees();

---teine funktsioon