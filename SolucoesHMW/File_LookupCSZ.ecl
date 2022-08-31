EXPORT File_LookupCSZ := MODULE
	EXPORT Layout := RECORD
			UNSIGNED4 CSZ_ID;
			STRING20 City;
			STRING2 State;
			UNSIGNED3 ZipCode;
	END;
	SHARED Filename := '~CLASS::HMW::OUT::LookupCSZ';
	EXPORT File := DATASET(Filename,Layout,FLAT);
	EXPORT IDX_CSZ := INDEX(File,{CSZ_ID},{File},'~CLASS::HMW::KEY::Lookup_CSZ');
	
END;