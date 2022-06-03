EXPORT NormAddrRecs := MODULE
  EXPORT Layout := RECORD
    UNSIGNED4 block_ID;
		STRING38 Block;
  END;
  EXPORT File := DATASET('~CLASS::HMW::OUT::LookupBlock',Layout,THOR);
	EXPORT IDX_Addr := INDEX(File,{Block},{block_ID},'~chicago::hmw::key::addr_block');
END;