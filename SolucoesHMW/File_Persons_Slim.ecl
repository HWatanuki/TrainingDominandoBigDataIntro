IMPORT $;
EXPORT File_Persons_Slim := MODULE
	EXPORT Layout := RECORD
			RECORDOF($.STD_Persons.File) AND NOT [City,State,ZipCode];
			// equivalent to:
			// $.STD_Persons.RecID;
			// $.STD_Persons.ID;
			// $.STD_Persons.FirstName;
			// $.STD_Persons.LastName;
			// $.STD_Persons.MiddleName;
			// $.STD_Persons.NameSuffix;
			// $.STD_Persons.FileDate;
			// $.STD_Persons.BureauCode;
			// $.STD_Persons.Gender;
			// $.STD_Persons.BirthDate;
			// $.STD_Persons.StreetAddress;
			UNSIGNED4 CSZ_ID;
	END;
	EXPORT File := DATASET('~CLASS::hmw::OUT::Persons_Slim',Layout,FLAT);
	EXPORT IDX_LName_Fname := INDEX(File,{LastName,FirstName},{File},'~CLASS::hmw::KEY::Lname_Fname');

END;