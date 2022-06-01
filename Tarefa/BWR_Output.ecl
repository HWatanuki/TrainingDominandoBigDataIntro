IMPORT $, STD;

Crimes_raw := $.File_crime_raw.File;
Crimes_optimized := $.File_crime_optimized.File;

// Tarefa 2
// OUTPUT(Crimes_raw,NAMED('Raw_data'));

// Tarefa 3
// STD.DataPatterns.Profile(Crimes_raw);
// STD.DataPatterns.BestRecordStructure(Crimes_raw);

// OUTPUT(Crimes_optimized,NAMED('Optimized_data'));

// Tarefa 4
OUTPUT($.Formatted_File,NAMED('Formatted_File'));
