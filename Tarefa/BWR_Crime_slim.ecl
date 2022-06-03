IMPORT $;

$.NormCrimeRecs.Layout Slimdown(RECORDOF($.Formatted_File) L,
																		$.NormAddrRecs.Layout R) := TRANSFORM
		SELF.block_ID := R.block_ID;
		SELF := L;
END;

SlimRecs := JOIN($.Formatted_File,$.NormAddrRecs.File,
									LEFT.block=RIGHT.block,
									Slimdown(LEFT,RIGHT),LEFT OUTER, LOOKUP);

OUTPUT(SlimRecs,,'~CLASS::HMW::OUT::Crimes_Slim',overwrite);