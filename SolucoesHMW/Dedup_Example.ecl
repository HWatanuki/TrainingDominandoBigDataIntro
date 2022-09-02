myrec := RECORD
 unsigned recid;
 string firstname;
 string lastname;
END;


myds := DATASET([{1,'Alysson','Oliveira'},
                 {2,'Artur','Baruchi'},
								 {3,'Baruchi','Watanuki'},
								 {4,'Hugo','Watanuki'},
								 {5,'Hugo','Watanuki'}],myrec);
							
myds;

mysrt := SORT(myds,firstname,lastname);
			
mydp1 := DEDUP(mysrt,firstname,lastname);			
mydp1;
			
mydp2 := DEDUP(mydp1,LEFT.lastname = RIGHT.firstname);  
mydp2;
			