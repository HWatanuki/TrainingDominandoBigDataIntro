EXPORT File_crime_optimized := MODULE

	EXPORT Layout:=	RECORD
		UNSIGNED ID;
	  STRING Case_Number;
		STRING Date;
    STRING Block;
    STRING IUCR;
    STRING Primary_Type;
    STRING Description;
		STRING Location_Description;
    BOOLEAN Arrest;
    BOOLEAN Domestic;
    UNSIGNED2 Beat;
    UNSIGNED2 District;
    UNSIGNED2 Ward;
    UNSIGNED2 Community_Area;
    STRING FBI_Code;
    UNSIGNED6 X_Coordinate;
    UNSIGNED6 Y_Coordinate;
    UNSIGNED2 Year;
    STRING Updated_On;
    DECIMAL11_9 Latitude;
    DECIMAL11_9 Longitude;
    STRING Location;
		END;
		
  EXPORT File:=DATASET('~class::hmw::intro::crimes_-_2001_to_present.csv',Layout,CSV(heading(1)));

END;