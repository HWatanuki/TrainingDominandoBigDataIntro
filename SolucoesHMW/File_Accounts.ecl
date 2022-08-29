EXPORT File_Accounts := MODULE

	EXPORT Layout:=RECORD
		UNSIGNED8	PersonID;
		STRING8		ReportDate;
		STRING2		IndustryCode;
		UNSIGNED4	Member;
		STRING8		OpenDate;
		STRING1		TradeType;
		STRING1		TradeRate;
		UNSIGNED1	Narr1;
		UNSIGNED1	Narr2;
		UNSIGNED4	HighCredit;
		UNSIGNED4	Balance;
		UNSIGNED2	Terms;
		UNSIGNED1	TermTypeR;
		STRING20	AccountNumber;
		STRING8		LastActivityDate;
		UNSIGNED1	Late30Day;
		UNSIGNED1	Late60Day;
		UNSIGNED1	Late90Day;
		STRING1		TermType;
	END;

	EXPORT File:=DATASET('~CLASS::hmw::INTRO::Accounts',Layout,CSV);

END;