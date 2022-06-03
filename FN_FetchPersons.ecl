IMPORT $;

EXPORT FN_FetchPersons (STRING lname, STRING fname) := FUNCTION
	
	basekey1 := $.File_Persons_Slim.IDX_lname_fname;
	basekey2 := $.File_LookupCSZ.IDX_csz;
	
	FilteredKey := IF(fname='',
										basekey1(LastName=lname), 
										basekey1(LastName=lname AND FirstName=fname)
										);
	
	Outrec := RECORD
		RECORDOF(basekey1) AND NOT [csz_id];
		RECORDOF(basekey2) AND NOT [csz_id];
	END;
	
	Outrec MyJoin(basekey2 Le, FilteredKey Ri):= TRANSFORM
		SELF:=Le;
		SELF:=Ri;
	END;
	
	JoinRecs:= JOIN(basekey2,FilteredKey,
									LEFT.csz_id=RIGHT.csz_id, 
									MyJoin(LEFT, RIGHT),
									ALL);

	RETURN OUTPUT(JoinRecs);
END;