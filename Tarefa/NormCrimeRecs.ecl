IMPORT $;

EXPORT NormCrimeRecs := MODULE
  EXPORT Layout := RECORD
    UNSIGNED row_id;
	  UNSIGNED4 day;
	 	UNSIGNED4 time;
		STRING11 Case_Number;
		STRING4 IUCR;
  	STRING33 Primary_Type;
		STRING60 Description;
		UNSIGNED4 block_ID;
  END;
  EXPORT File := DATASET('~CLASS::HMW::OUT::Crimes_Slim',Layout,THOR);
	EXPORT IDX_Crimes := INDEX(File,{block_ID},{primary_type, Description},'~chicago::hmw::key::crime_row_id');
END;
