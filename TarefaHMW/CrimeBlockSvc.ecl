IMPORT $,STD;

// FUNCTION structure that receives Block information as input and returns the 10 most common crimes over the last 5 yrs
EXPORT CrimeBlockSvc (STRING Block_info):= FUNCTION
  
	// INDEX definitions being used by the query
	basekey1 := $.NormCrimeRecs.IDX_Crimes;
	basekey2 := $.NormAddrRecs.IDX_addr;
	
	// First step is to filter the address INDEX with the address information and obtain the block id
	FilteredKey := 	basekey2(STD.Str.FindWord(Block,STD.Str.ToUpperCase(Block_info),true));
	
	// Second step is to use the block id value to recover the crime information via a JOIN
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
  
	// Third step is to tabulate (TABLE) and format (SORT/CHOOSEN) the resulting recordset
	outrec := RECORD
		joinrecs.block;
	  joinrecs.primary_type;
	  joinrecs.description;
	  unsigned cnt:=COUNT(GROUP);
	END;
 
  mytable := CHOOSEN(SORT(TABLE(joinrecs,outrec,block,primary_type,description),-cnt),10);	
  
	// FUNCTION return value
	RETURN OUTPUT(mytable);
END;