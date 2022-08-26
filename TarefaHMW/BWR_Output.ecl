IMPORT $, STD, DataPatterns;

Crimes_raw := $.File_crime_raw.File;

// Tarefa 2
OUTPUT(Crimes_raw,NAMED('Raw_data'));
