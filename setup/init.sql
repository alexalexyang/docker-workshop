-- CREATE DATABASE creatures

CREATE TABLE creature_legs (
	creature       VARCHAR (50)   NOT NULL    UNIQUE,
	number_of_legs INT            NOT NULL
);

INSERT INTO creature_legs VALUES ('shahmaran', 0);
INSERT INTO creature_legs VALUES ('penanggalan', 0);
INSERT INTO creature_legs VALUES ('mermaid', 0);
INSERT INTO creature_legs VALUES ('curupira', 2);
INSERT INTO creature_legs VALUES ('saci', 1);
INSERT INTO creature_legs VALUES ('unicorn', 4);
INSERT INTO creature_legs VALUES ('bigfoot', 2);