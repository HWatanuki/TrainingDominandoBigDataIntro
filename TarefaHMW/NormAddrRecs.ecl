EXPORT NormAddrRecs := MODULE
  // Normalized RECORD structure    
	EXPORT Layout := RECORD
    UNSIGNED4 block_ID;
		STRING38 Block;
  END;
	// Normalized DATASET definition
  EXPORT File := DATASET('~CLASS::HMW::OUT::LookupBlock',Layout,THOR);
	// INDEX definition
	EXPORT IDX_Addr := INDEX(File,{Block},{block_ID},'~chicago::hmw::key::addr_block');
END;