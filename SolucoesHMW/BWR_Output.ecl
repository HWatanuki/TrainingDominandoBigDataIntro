IMPORT $, DataPatterns;

// Aula 2
// OUTPUT($.File_Accounts.File);
// CHOOSEN($.File_Accounts.File,200);
// OUTPUT($.File_Persons.File);

// Aula 3
Persons := $.File_Persons.File;
profileResults := DataPatterns.Profile(Persons);
OUTPUT(profileResults, ALL, NAMED('profileResults'));
