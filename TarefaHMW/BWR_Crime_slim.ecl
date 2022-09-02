IMPORT $;

// Content from NormCrimeRecs.ecl
// EXPORT NormCrimeRecs := MODULE
  // EXPORT Layout := RECORD
    // UNSIGNED row_id;
	  // UNSIGNED4 day;
	 	// UNSIGNED4 time;
		// STRING11 Case_Number;
		// STRING4 IUCR;
  	// STRING33 Primary_Type;
		// STRING60 Description;
		// UNSIGNED4 block_ID;
  // END;
  // EXPORT File := DATASET('~CLASS::HMW::OUT::Crimes_Slim',Layout,THOR);
// END;

// Normalize the crime recordset by removing block informaton and replacing it with the block ID information
$.NormCrimeRecs.Layout Slimdown(RECORDOF($.Formatted_File) L,
																		$.NormAddrRecs.Layout R) := TRANSFORM
		SELF.block_ID := R.block_ID;
		SELF := L;
END;

SlimRecs := JOIN($.Formatted_File,$.NormAddrRecs.File,
									LEFT.block=RIGHT.block,
									Slimdown(LEFT,RIGHT),LEFT OUTER, LOOKUP);

// Prsist the resulting normalized recordset
OUTPUT(SlimRecs,,'~CLASS::HMW::OUT::Crimes_Slim',overwrite);