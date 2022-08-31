IMPORT $;

$.File_Persons_Slim.Layout Slimdown($.STD_Persons.Layout L,
																		$.File_LookupCSZ.Layout R) := TRANSFORM
		SELF.CSZ_ID := R.CSZ_ID;
		SELF := L;
END;

SlimRecs := JOIN($.STD_Persons.File,$.File_LookupCSZ.File,
									LEFT.zipcode=RIGHT.zipcode AND
									LEFT.city=RIGHT.city AND
									LEFT.state=RIGHT.state,
									Slimdown(LEFT,RIGHT),LEFT OUTER, LOOKUP);

OUTPUT(SlimRecs,,'~CLASS::HMW::OUT::Persons_Slim',overwrite);

