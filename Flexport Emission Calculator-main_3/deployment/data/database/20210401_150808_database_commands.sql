ALTER TABLE "emissioncalculatormodule$destination_information" RENAME TO "5817000880dc4f288d9701e70e26d5fe";
ALTER TABLE "emissioncalculatormodule$order_information_geolocation_origin" DROP CONSTRAINT "uniq_emissioncalculatormodule$order_information_geolocation_origin_emissioncalculatormodule$order_informationid";
ALTER TABLE "emissioncalculatormodule$order_information_geolocation_origin" DROP CONSTRAINT "uniq_emissioncalculatormodule$order_information_geolocation_origin_emissioncalculatormodule$geolocation_originid";
DROP INDEX "idx_emissioncalculatormodule$order_information_geolocation_origin";
ALTER TABLE "emissioncalculatormodule$order_information_geolocation_origin" RENAME TO "549f9d6608e64309b328364ccc5b4985";
ALTER TABLE "emissioncalculatormodule$order_information_destination_information" DROP CONSTRAINT "uniq_emissioncalculatormodule$order_information_destination_information_emissioncalculatormodule$order_informationid";
DROP INDEX "idx_emissioncalculatormodule$order_information_destination_information";
ALTER TABLE "emissioncalculatormodule$order_information_destination_information" RENAME TO "6c72952a7996413099971f08bb2c97bc";
ALTER TABLE "emissioncalculatormodule$order_information_geolocation_destination" DROP CONSTRAINT "uniq_emissioncalculatormodule$order_information_geolocation_destination_emissioncalculatormodule$geolocation_destinationid";
ALTER TABLE "emissioncalculatormodule$order_information_geolocation_destination" DROP CONSTRAINT "uniq_emissioncalculatormodule$order_information_geolocation_destination_emissioncalculatormodule$order_informationid";
DROP INDEX "idx_emissioncalculatormodule$order_information_geolocation_destination";
ALTER TABLE "emissioncalculatormodule$order_information_geolocation_destination" RENAME TO "b2958f3fd1db453cbea8d00d44b128d3";
ALTER TABLE "emissioncalculatormodule$order_information_origin_information" DROP CONSTRAINT "uniq_emissioncalculatormodule$order_information_origin_information_emissioncalculatormodule$order_informationid";
DROP INDEX "idx_emissioncalculatormodule$order_information_origin_information";
ALTER TABLE "emissioncalculatormodule$order_information_origin_information" RENAME TO "47a8a56cd8f44784b680cc6b39d6bf69";
ALTER TABLE "emissioncalculatormodule$origin_information" RENAME TO "22657d54f5054f9cab52c8c067923aee";
ALTER TABLE "emissioncalculatormodule$order_information" RENAME TO "emissioncalculatormodule$calculationinfo";
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '2ebcfa3c-38bc-441c-8136-0314a634fd7b';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '2ebcfa3c-38bc-441c-8136-0314a634fd7b';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '2ebcfa3c-38bc-441c-8136-0314a634fd7b');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '2ebcfa3c-38bc-441c-8136-0314a634fd7b';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '2ebcfa3c-38bc-441c-8136-0314a634fd7b';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'EmissionCalculatorModule.CalculationInfo', 
"table_name" = 'emissioncalculatormodule$calculationinfo', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '37e75cbc-1ed4-4687-8508-2d7e03c2b491';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '43378853-3891-4bb2-b7a1-4cd259856193';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$order_information_geolocation_origin_emissioncalculatormodule$order_informationid' AND "column_id" = 'a4eda202-05e5-35c7-b4d6-8a58bce6a5e2';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$order_information_geolocation_origin_emissioncalculatormodule$geolocation_originid' AND "column_id" = 'cb807c7a-a1f3-37b1-b396-d1ecfa2ac9a2';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '6822e505-f21d-435b-8aea-b337242d6801';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$order_information_destination_information_emissioncalculatormodule$order_informationid' AND "column_id" = '61af4ff7-3fb5-3148-bff3-c922b5399638';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '6f26a50e-107a-44e4-a0a9-b9e05f6a20a6';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$order_information_geolocation_destination_emissioncalculatormodule$geolocation_destinationid' AND "column_id" = '7cfecb72-9064-3e30-9507-73e64251b8f8';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$order_information_geolocation_destination_emissioncalculatormodule$order_informationid' AND "column_id" = 'cb30085e-c037-3c5c-8f51-dc2fe2da103f';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '8530267a-69ef-4072-a561-35d5d0565e0d';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$order_information_origin_information_emissioncalculatormodule$order_informationid' AND "column_id" = '32e4f74e-94c4-3d06-8694-1a567f79ce3d';
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = '4e8f9183-bd32-4821-969b-0c427b20319d';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = '4e8f9183-bd32-4821-969b-0c427b20319d';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = '4e8f9183-bd32-4821-969b-0c427b20319d');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = '4e8f9183-bd32-4821-969b-0c427b20319d';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = '4e8f9183-bd32-4821-969b-0c427b20319d';
CREATE TABLE "emissioncalculatormodule$company" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('5b91194c-06c1-4c0b-8b81-4de1964e77a7', 
'EmissionCalculatorModule.Company', 
'emissioncalculatormodule$company', 
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
 VALUES ('67bac106-b6e4-440c-b150-b75e5abc7217', 
'5b91194c-06c1-4c0b-8b81-4de1964e77a7', 
'Name', 
'name', 
30, 
200, 
'', 
false);
CREATE TABLE "emissioncalculatormodule$calculationinfo_company" (
	"emissioncalculatormodule$calculationinfoid" BIGINT NOT NULL,
	"emissioncalculatormodule$companyid" BIGINT NOT NULL,
	PRIMARY KEY("emissioncalculatormodule$calculationinfoid","emissioncalculatormodule$companyid"),
	CONSTRAINT "uniq_emissioncalculatormodule$calculationinfo_company_emissioncalculatormodule$calculationinfoid" UNIQUE ("emissioncalculatormodule$calculationinfoid"));
CREATE INDEX "idx_emissioncalculatormodule$calculationinfo_company_emissioncalculatormodule$company_emissioncalculatormodule$calculationinfo" ON "emissioncalculatormodule$calculationinfo_company" ("emissioncalculatormodule$companyid" ASC,"emissioncalculatormodule$calculationinfoid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('668935a3-5296-4a98-96d2-58b5e2829ef9', 
'EmissionCalculatorModule.CalculationInfo_Company', 
'emissioncalculatormodule$calculationinfo_company', 
'37e75cbc-1ed4-4687-8508-2d7e03c2b491', 
'5b91194c-06c1-4c0b-8b81-4de1964e77a7', 
'emissioncalculatormodule$calculationinfoid', 
'emissioncalculatormodule$companyid', 
'idx_emissioncalculatormodule$calculationinfo_company_emissioncalculatormodule$company_emissioncalculatormodule$calculationinfo');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emissioncalculatormodule$calculationinfo_company_emissioncalculatormodule$calculationinfoid', 
'668935a3-5296-4a98-96d2-58b5e2829ef9', 
'86916fba-ef68-3e9d-ba4a-6388ad07f948');
DROP TABLE "5817000880dc4f288d9701e70e26d5fe";
DROP TABLE "549f9d6608e64309b328364ccc5b4985";
DROP TABLE "6c72952a7996413099971f08bb2c97bc";
DROP TABLE "b2958f3fd1db453cbea8d00d44b128d3";
DROP TABLE "47a8a56cd8f44784b680cc6b39d6bf69";
DROP TABLE "22657d54f5054f9cab52c8c067923aee";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210401 15:08:08';
