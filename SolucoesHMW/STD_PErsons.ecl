IMPORT $,Std;

EXPORT STD_Persons := MODULE

	EXPORT Layout := RECORD
		$.UID_Persons.RecID;
		$.UID_Persons.ID;
		STRING15 FirstName 	:= std.Str.ToUpperCase($.UID_Persons.FirstName);
		STRING25 LastName 	:= std.Str.ToUpperCase($.UID_Persons.LastName);
		STRING1 MiddleName 	:= std.Str.ToUpperCase($.UID_Persons.MiddleName);
		STRING2 NameSuffix 	:= std.Str.ToUpperCase($.UID_Persons.NameSuffix);
		UNSIGNED4 FileDate 	:= (UNSIGNED4)$.UID_Persons.FileDate;
		$.UID_Persons.BureauCode;
		$.UID_Persons.Gender;
		UNSIGNED4 BirthDate := (UNSIGNED4)$.UID_Persons.BirthDate;
		$.UID_Persons.StreetAddress;
		$.UID_Persons.City;
		$.UID_Persons.State;
		UNSIGNED3 ZipCode 	:= (UNSIGNED3)$.UID_Persons.ZipCode;
		END;
		

	// EXPORT File := TABLE($.UID_Persons,Layout):PERSIST('~CLASS::HMW::PERSIST::STD_Persons');
	EXPORT File := TABLE($.UID_Persons,Layout);
	// File:PERSIST('~CLASS::HMW::PERSIST::STD_Persons');
END;


// EXPORT STD_Persons := MODULE

	// EXPORT Layout := RECORD
			// $.UID_Persons.RecID;
			// $.UID_Persons.ID;
			// $.UID_Persons.FirstName;
			// $.UID_Persons.LastName;
			// STRING1 	MiddleName;
			// $.UID_Persons.NameSuffix;
			// UNSIGNED4 FileDate;
			// $.UID_Persons.BureauCode;
			// $.UID_Persons.Gender;
			// UNSIGNED4 BirthDate;
			// $.UID_Persons.StreetAddress;
			// $.UID_Persons.City;
			// $.UID_Persons.State;
			// UNSIGNED3 ZipCode;
	// END;
		
		// Layout MyTransf(RECORDOF($.UID_Persons)Le):= TRANSFORM
		  // SELF.FirstName 	:= std.Str.ToUpperCase(Le.FirstName);
		  // SELF.LastName 	:= std.Str.ToUpperCase(Le.LastName);
		  // SELF.MiddleName := std.Str.ToUpperCase(Le.MiddleName);
		  // SELF.NameSuffix := std.Str.ToUpperCase(Le.NameSuffix);
		  // SELF.FileDate 	:= (UNSIGNED4)Le.FileDate;
		  // SELF.BirthDate  := (UNSIGNED4)Le.BirthDate;
		  // SELF.ZipCode 	  := (UNSIGNED3)Le.ZipCode;
			// SELF 						:= Le;
		// END;
		

	// EXPORT File := PROJECT($.UID_Persons,MyTransf(LEFT)):PERSIST('~CLASS::HMW::PERSIST::STD_Persons-prj');
// END;