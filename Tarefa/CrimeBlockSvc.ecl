IMPORT $,STD;

EXPORT CrimeBlockSvc (STRING Block_info):= FUNCTION

	basekey1 := $.NormCrimeRecs.IDX_Crimes;
	basekey2 := $.NormAddrRecs.IDX_addr;
	
	FilteredKey := 	basekey2(STD.Str.FindWord(Block,STD.Str.ToUpperCase(Block_info),true));
	
	joinedrec := RECORD
    basekey2.block;
		basekey1.primary_type;
		basekey1.description;
																							
	END;
	
	joinedrec MyJoin(basekey1 Le, FilteredKey Ri):= TRANSFORM
		SELF:=Le;
		SELF:=Ri;
END;
	
	JoinRecs:= JOIN(basekey1,FilteredKey,
									KEYED(LEFT.block_id=RIGHT.block_id) AND WILD(RIGHT.Block), 
									MyJoin(LEFT, RIGHT),
									ALL);

	outrec := RECORD
		joinrecs.block;
	  joinrecs.primary_type;
	  joinrecs.description;
	  unsigned cnt:=COUNT(GROUP);
	END;

 mytable := CHOOSEN(SORT(TABLE(joinrecs,outrec,block,primary_type,description),-cnt),10);	
 
	
	RETURN OUTPUT(mytable);
END;