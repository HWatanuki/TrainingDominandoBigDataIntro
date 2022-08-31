IMPORT $,STD;

Crimes:=$.File_crime_optimized;

// New layout for formatted data
new_Layout := RECORD
	UNSIGNED row_id;
	UNSIGNED4 day;
	// STRING6 time;
	UNSIGNED4 time;
	Crimes.Layout AND NOT date;
END;

// TRANSFORM structure and associated PROJECT function for cleansing the original dataset
New_Layout Reformatter(Crimes.Layout L, UNSIGNED cnt):=TRANSFORM
		SELF.row_id:=cnt;
		SELF.day:=STD.Date.FromStringToDate(L.Date[1..10],'%m/%d/%Y');
		// SELF.time:=INTFORMAT(STD.Date.TimeFromParts(IF(L.Date[21..22]='PM',
		SELF.time:=STD.Date.TimeFromParts(IF(L.Date[21..22]='PM',
											                    IF(L.Date[12..13]='12',12,(UNSIGNED1)L.Date[12..13]+12),
											                    IF(L.Date[12..13]='12',0,(UNSIGNED1)L.Date[12..13])),
										 (UNSIGNED1)L.Date[15..16],
									  // (UNSIGNED1)L.Date[18..19]),6,1);
									     (UNSIGNED1)L.Date[18..19]);
		SELF:=L;
END;

EXPORT Formatted_File := PROJECT(Crimes.File,Reformatter(LEFT,COUNTER)):PERSIST('~chicago::hmw::out::Formatted_file');