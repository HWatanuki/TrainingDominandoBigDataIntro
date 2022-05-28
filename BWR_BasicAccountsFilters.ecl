IMPORT $;
Accounts := $.File_Accounts.File;

Accounts(Balance >= 100000);
COUNT(Accounts(Balance >= 100000)); //255,131


Accounts(Balance >= 100000, Late30Day >0 OR Late60Day >0 OR Late90Day >0);
Accounts(Balance >= 100000, (Late30Day >0 OR Late60Day >0 OR Late90Day >0));
Accounts(Balance >= 100000 AND  Late30Day >0 OR Late60Day >0 OR Late90Day >0);
Accounts(Balance >= 100000 AND (Late30Day >0 OR Late60Day >0 OR Late90Day >0));

COUNT(Accounts(Balance >= 100000, Late30Day>0 OR Late60Day>0 OR Late90Day>0)); //20,684
COUNT(Accounts(Balance >= 100000,(Late30Day>0 OR Late60Day>0 OR Late90Day>0))); //20,684
COUNT(Accounts(Balance >= 100000 AND Late30Day>0 OR Late60Day>0 OR Late90Day>0)); //638,796
COUNT(Accounts(Balance >= 100000 AND (Late30Day>0 OR Late60Day>0 OR Late90Day>0))); //20,684

Accounts(OpenDate[..4] >= '2000');
COUNT(Accounts(OpenDate[..4] >= '2000')); // 756,676

Accounts(TermType = '');
COUNT(Accounts(TermType = ''));		//4,288,443