IMPORT $;

Layout_People_RecID := RECORD
	UNSIGNED4 RecID;
	$.File_Persons.Layout;
END;

Layout_People_RecID IDRecs($.File_Persons.Layout L,INTEGER C) := TRANSFORM
	SELF.RecID := C;
	SELF := L;
END;

EXPORT UID_Persons := PROJECT($.File_Persons.File,IDRecs(LEFT,COUNTER))
															:PERSIST('~CLASS::HMW::PERSIST::UID_Persons');