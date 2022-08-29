IMPORT $;

Persons := $.File_Persons.File;
Accounts:= $.File_Accounts.File;

Persons;
Accounts;

COUNT(Persons); //841,400
COUNT(Accounts); // 8,335,660

OUTPUT(Persons,{ID,LastName,FirstName}); 
OUTPUT(Accounts,{ReportDate,HighCredit,Balance}); 

OUTPUT(Persons,{ID,StreetAddress,City,State,ZipCode},NAMED('Address_Info'));
OUTPUT(Accounts,{AccountNumber,LastActivityDate,Balance},NAMED('Acct_Activity'));