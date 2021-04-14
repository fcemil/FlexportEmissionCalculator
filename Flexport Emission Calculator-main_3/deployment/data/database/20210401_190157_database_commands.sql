ALTER TABLE "emissioncalculatormodule$geolocation_origin" RENAME TO "e8923f1f0c874f66928122d3c1cb219f";
ALTER TABLE "emissioncalculatormodule$geolocation_destination" RENAME TO "dafda79a6b3b40b6b0972b68207d21cf";
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '1f180429-5cb3-4f72-a017-b1858aa2f239';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '1f180429-5cb3-4f72-a017-b1858aa2f239';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '1f180429-5cb3-4f72-a017-b1858aa2f239');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '1f180429-5cb3-4f72-a017-b1858aa2f239';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '1f180429-5cb3-4f72-a017-b1858aa2f239';
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = 'd819a01e-35d8-46d4-a156-9140970da623';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = 'd819a01e-35d8-46d4-a156-9140970da623';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = 'd819a01e-35d8-46d4-a156-9140970da623');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = 'd819a01e-35d8-46d4-a156-9140970da623';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = 'd819a01e-35d8-46d4-a156-9140970da623';
CREATE TABLE "emissioncalculatormodule$geolocation" (
	"id" BIGINT NOT NULL,
	"latitude" DECIMAL(28, 8) NULL,
	"longitude" DECIMAL(28, 8) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('2f052a09-5fea-4490-9b86-ccf843a16223', 
'EmissionCalculatorModule.GeoLocation', 
'emissioncalculatormodule$geolocation', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('d7fcb732-a1a6-4370-b811-bf2da4dccd09', 
'2f052a09-5fea-4490-9b86-ccf843a16223', 
'Latitude', 
'latitude', 
5, 
0, 
'0', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('8fa5d354-6e2f-47c5-b0b8-699109094f72', 
'2f052a09-5fea-4490-9b86-ccf843a16223', 
'Longitude', 
'longitude', 
5, 
0, 
'0', 
false);
DROP TABLE "e8923f1f0c874f66928122d3c1cb219f";
DROP TABLE "dafda79a6b3b40b6b0972b68207d21cf";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210401 19:01:57';
