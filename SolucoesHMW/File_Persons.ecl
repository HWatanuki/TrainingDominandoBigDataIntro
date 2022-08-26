EXPORT File_Persons := MODULE
 EXPORT Layout := RECORD
   UNSIGNED8 ID;
   STRING15 FirstName;
   STRING25 LastName;
   STRING15 MiddleName;
   STRING2 NameSuffix;
   STRING8 FileDate;
   UNSIGNED2 BureauCode;
   STRING1 MaritalStatus;
   STRING1 Gender;
   UNSIGNED1 DependentCount;
   STRING8 BirthDate;
   STRING42 StreetAddress;
   STRING20 City;
   STRING2 State;
   STRING5 ZipCode;
 END;
 //YOUR initials between CLASS and Intro:
 EXPORT File := DATASET('~CLASS::HMW::Intro::Persons',Layout,FLAT);
END;