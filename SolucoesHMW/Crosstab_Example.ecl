IMPORT BWR_TrainingExamples AS X;

 MyRec := RECORD
  STRING1  Value1;
  STRING1  Value2;
  INTEGER1 Value3;
 END;
 
 SomeFile := DATASET([{'C','G',1},
                      {'C','C',2},
                      {'A','X',3},
                      {'B','G',4},
                      {'A','B',5}],MyRec);
 MyOutRec := RECORD
   SomeFile.Value1;
   ValCount := COUNT(GROUP);
   GrpSum   := SUM(GROUP,SomeFile.Value3);
   AveSum   := AVE(GROUP,SomeFile.Value3);
 END;
 
 
// MyTable := TABLE(SomeFile,MyOutRec,Value1);
MyTable := TABLE(SomeFile,MyOutRec);

OUTPUT(MyTable);

// OUTPUT(SORT(MyTable,Value1));

/* MyTable result set is:
	Rec#	Value1	ValCount GrpSum	AveSum
	1				A					2				8			4
	2				C					2				3			1.5
	3				B					1				4			4
*/

 r := RECORD
  X.File_people.Gender;
	X.File_people.LastName;
  // X.File_people.Gender;
  GrpCnt := COUNT(GROUP);
  MaxLen := MAX(GROUP,LENGTH(TRIM(X.File_people.firstname)));
 END;
   
 // tbl := TABLE(X.File_People,r,LastName,Gender);
 tbl := TABLE(X.File_People,r,Gender,LastName);
 
 OUTPUT(tbl);
 
 // Persons := X.File_people.File;
 
 // R := RECORD
  // Persons.State;
  // Persons.Gender;
  // cnt := COUNT(GROUP);
// END;
// CTOut := TABLE(Persons,R, State, Gender);

 
 
 // stbl := SORT(tbl,-Maxlen);
 // stbl;
 // firstnameval := X.file_people(lastName = 'Candella',Gender = 'F');
 // firstnameval;
