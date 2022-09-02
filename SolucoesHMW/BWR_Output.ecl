IMPORT $, DataPatterns;

// Aula 2 
// #### Exercise 4/5 - part 1
// OUTPUT($.File_Accounts.File);
// CHOOSEN($.File_Accounts.File,200);
// OUTPUT($.File_Persons.File);

// #### Exercise 10a - part 1
// OUTPUT($.YoungMaleFloridaPersons); 
// COUNT($.YoungMaleFloridaPersons); // 462

// Aula 3
// Persons := $.File_Persons.File;
// profileResults := DataPatterns.Profile(Persons);
// OUTPUT(profileResults, ALL, NAMED('profileResults'));

// Aula 4
// #### Exercise 4a  - part 2
// OUTPUT($.UID_Persons);
// #### Exercise 5a - part 2
// OUTPUT($.STD_Persons);

// Aula 5
// #### Exercise 6 & 7 - part 2
// OUTPUT($.File_LookupCSZ.File);
// OUTPUT($.File_Persons_Slim.File);

// Aula 6
// #### Exercise 1a-1f - Roxie part 1
$.FN_FetchPersons('SMITH','');
$.FN_FetchPersons('SMITH','CELENIA');