IMPORT $;

Layout_T_recs := RECORD
	UNSIGNED4 CSZ_ID := $.STD_Persons.File.RecID;
	$.STD_Persons.File.City;
	$.STD_Persons.File.State;
	$.STD_Persons.File.Zipcode;
END;

T_recs := TABLE($.STD_Persons.File,Layout_T_recs);
T_recs;
S_recs := SORT(T_recs,ZipCode,State,City);

Layout_T_recs RollCSV(Layout_T_recs L, Layout_T_recs R) := TRANSFORM
	SELF.CSZ_ID := IF(L.CSZ_ID < R.CSZ_ID,L.CSZ_ID,R.CSZ_ID);
	SELF := L;
END;

Rollup_CSZ := ROLLUP(S_Recs,
										LEFT.Zipcode=RIGHT.Zipcode AND
										LEFT.State=RIGHT.State AND
										LEFT.City=RIGHT.City,
										RollCSV(LEFT,RIGHT));

Rollup_CSZ2 := SORT (Rollup_CSZ,CSZ_ID);
			
OUTPUT(Rollup_CSZ2,,'~CLASS::HMW::OUT::LookupCSZ',OVERWRITE);
// count(Rollup_CSZ2);
// OUTPUT(Rollup_CSZ,,'~CLASS::HMW::OUT::LookupCSZ',OVERWRITE);



