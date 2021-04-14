ALTER TABLE "emissioncalculatormodule$geolocation_destination_order_information" DROP CONSTRAINT "uniq_emissioncalculatormodule$geolocation_destination_order_information_emissioncalculatormodule$geolocation_destinationid";
DROP INDEX "idx_emissioncalculatormodule$geolocation_destination_order_information";
ALTER TABLE "emissioncalculatormodule$geolocation_destination_order_information" RENAME TO "9461390d2523415fab8f6b405b1e978a";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '1e1f4682-79b2-4757-96f0-0cb23d7eec75';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$geolocation_destination_order_information_emissioncalculatormodule$geolocation_destinationid' AND "column_id" = 'b6056c7d-1fd9-37ba-beea-ae7efa33c7d7';
CREATE TABLE "emissioncalculatormodule$geolocation_destination_order_information" (
	"emissioncalculatormodule$geolocation_destinationid" BIGINT NOT NULL,
	"emissioncalculatormodule$order_informationid" BIGINT NOT NULL,
	PRIMARY KEY("emissioncalculatormodule$geolocation_destinationid","emissioncalculatormodule$order_informationid"),
	CONSTRAINT "uniq_emissioncalculatormodule$geolocation_destination_order_information_emissioncalculatormodule$geolocation_destinationid" UNIQUE ("emissioncalculatormodule$geolocation_destinationid"));
CREATE INDEX "idx_emissioncalculatormodule$geolocation_destination_order_information" ON "emissioncalculatormodule$geolocation_destination_order_information" ("emissioncalculatormodule$order_informationid" ASC,"emissioncalculatormodule$geolocation_destinationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('a42f0e17-f1b1-42f6-bea1-e9b0625361ff', 
'EmissionCalculatorModule.GeoLocation_Destination_Order_Information', 
'emissioncalculatormodule$geolocation_destination_order_information', 
'd819a01e-35d8-46d4-a156-9140970da623', 
'37e75cbc-1ed4-4687-8508-2d7e03c2b491', 
'emissioncalculatormodule$geolocation_destinationid', 
'emissioncalculatormodule$order_informationid', 
'idx_emissioncalculatormodule$geolocation_destination_order_information');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emissioncalculatormodule$geolocation_destination_order_information_emissioncalculatormodule$geolocation_destinationid', 
'a42f0e17-f1b1-42f6-bea1-e9b0625361ff', 
'022e8fef-4ed1-3cff-a1d5-25f350b83695');
DROP TABLE "9461390d2523415fab8f6b405b1e978a";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210329 22:00:34';
