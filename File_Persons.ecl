EXPORT File_Persons := MODULE
	EXPORT Layout := RECORD
			UNSIGNED8 ID;
			STRING15 	FirstName;
			STRING25 	LastName;
			STRING15 	MiddleName;
			STRING2 	NameSuffix;
			STRING8 	FileDate;
			UNSIGNED2 BureauCode;
			STRING1 	MaritalStatus;
			STRING1 	Gender;
			UNSIGNED1 DependentCount;
			STRING8 	BirthDate;
			STRING42 	StreetAddress;
			STRING20 	City;
			STRING2 	State;
			STRING5 	ZipCode;
	END;
	EXPORT File := DATASET('~CLASS::hmw::Intro::Persons', Layout,FLAT);
END;


