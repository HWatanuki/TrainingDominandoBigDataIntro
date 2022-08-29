IMPORT $;
Persons := $.File_Persons.File;

EXPORT YoungMaleFloridaPersons := Persons($.IsYoungMaleFloridian);
