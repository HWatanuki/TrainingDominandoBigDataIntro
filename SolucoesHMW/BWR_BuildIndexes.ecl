IMPORT $;

BUILD ($.File_Persons_Slim.IDX_lname_fname,OVERWRITE);
BUILD ($.File_LookupCSZ.IDX_CSZ,OVERWRITE);

COUNT($.File_Persons_Slim.IDX_lname_fname); //841,400
COUNT($.File_LookupCSZ.IDX_CSZ); //20,703
