IMPORT $, STD, DataPatterns;

Crimes_raw := $.File_crime_raw.File;
Crimes_optimized := $.File_crime_optimized.File;

// Tarefa 2
// OUTPUT(Crimes_raw,NAMED('Raw_data'));

// Tarefa 3
// DataPatterns.Profile(Crimes_raw);
// DataPatterns.BestRecordStructure(Crimes_raw);
// DataPatterns.BestRecordStructure(Crimes_raw);
// DataPatterns.Benford(Crimes_raw, 'community_area');
// OUTPUT(Crimes_optimized,NAMED('Optimized_data'));

// Tarefa 4
// OUTPUT($.Formatted_File,NAMED('Formatted_File'));

// Tarefa 5
// OUTPUT($.NormAddrRecs.File);
// OUTPUT($.NormCrimeRecs.File);

// Tarefa 6
$.CrimeBlockSvc('E 100 PL'); //residential area
$.CrimeBlockSvc('N STATE ST'); //commercial area with retail theft
$.CrimeBlockSvc('E Jackson BLVD'); //area with building theft