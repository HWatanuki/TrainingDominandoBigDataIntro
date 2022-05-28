IMPORT $;
Persons := $.File_Persons.File;

IsFloridian := Persons.State = 'FL';

IsMale := Persons.Gender = 'M';

IsBorn80 := Persons.Birthdate <> '' AND Persons.Birthdate[..4] >= '1980' ;

EXPORT IsYoungMaleFloridian := 	IsFloridian AND
																IsMale AND
																IsBorn80;