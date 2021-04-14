ALTER TABLE "emissioncalculatormodule$geolocation_origin_geolocation_origin" DROP CONSTRAINT "uniq_emissioncalculatormodule$geolocation_origin_geolocation_origin_emissioncalculatormodule$geolocation_originid1";
DROP INDEX "idx_emissioncalculatormodule$geolocation_origin_geolocation_origin";
ALTER TABLE "emissioncalculatormodule$geolocation_origin_geolocation_origin" RENAME TO "7f06ef248a8b468cbd007b4e62d15a76";
ALTER TABLE "emissioncalculatormodule$geolocation_destination_geolocation_destination" DROP CONSTRAINT "uniq_emissioncalculatormodul$geolocation_destination_geolocation_destination_emissioncalculatormodule$geolocation_destinationid1";
DROP INDEX "idx_emissioncalculatormodule$geolocation_destination_geolocation_destination";
ALTER TABLE "emissioncalculatormodule$geolocation_destination_geolocation_destination" RENAME TO "7c38125eef6146ce846d26c3c97ed20f";
ALTER TABLE "emissioncalculatormodule$geolocation_destination_order_information" DROP CONSTRAINT "uniq_emissioncalculatormodule$geolocation_destination_order_information_emissioncalculatormodule$geolocation_destinationid";
DROP INDEX "idx_emissioncalculatormodule$geolocation_destination_order_information";
ALTER TABLE "emissioncalculatormodule$geolocation_destination_order_information" RENAME TO "21dbf35a97254cb783cd7c39470dabd3";
ALTER TABLE "emissioncalculatormodule$jsonobject" RENAME TO "c5721a5417914d4abd3bb023bb49b1aa";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '82fb4991-7dd6-4568-a1b4-09ab0808e270';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$geolocation_origin_geolocation_origin_emissioncalculatormodule$geolocation_originid1' AND "column_id" = '13e390f6-b7e0-31ae-9161-010413a92081';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '702e0824-95d2-4121-b714-6362daa4b921';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodul$geolocation_destination_geolocation_destination_emissioncalculatormodule$geolocation_destinationid1' AND "column_id" = '9ba59a02-132d-38ad-bbd9-45480888c6f9';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'b075f475-dc07-4325-a318-95404289948e';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$geolocation_destination_order_information_emissioncalculatormodule$geolocation_destinationid' AND "column_id" = 'f7b46f41-1cb5-348d-9b05-d968ed205bce';
DELETE FROM "mendixsystem$entity" 
 WHERE "id" = 'ec9deb18-02fc-4d9c-a243-ec2dcdf6e08e';
DELETE FROM "mendixsystem$entityidentifier" 
 WHERE "id" = 'ec9deb18-02fc-4d9c-a243-ec2dcdf6e08e';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" IN (SELECT "id"
 FROM "mendixsystem$attribute"
 WHERE "entity_id" = 'ec9deb18-02fc-4d9c-a243-ec2dcdf6e08e');
DELETE FROM "mendixsystem$remote_primary_key" 
 WHERE "entity_id" = 'ec9deb18-02fc-4d9c-a243-ec2dcdf6e08e';
DELETE FROM "mendixsystem$attribute" 
 WHERE "entity_id" = 'ec9deb18-02fc-4d9c-a243-ec2dcdf6e08e';
CREATE TABLE "emissioncalculatormodule$geolocation_origin_geolocation_origin" (
	"emissioncalculatormodule$geolocation_originid1" BIGINT NOT NULL,
	"emissioncalculatormodule$geolocation_originid2" BIGINT NOT NULL,
	PRIMARY KEY("emissioncalculatormodule$geolocation_originid1","emissioncalculatormodule$geolocation_originid2"),
	CONSTRAINT "uniq_emissioncalculatormodule$geolocation_origin_geolocation_origin_emissioncalculatormodule$geolocation_originid1" UNIQUE ("emissioncalculatormodule$geolocation_originid1"));
CREATE INDEX "idx_emissioncalculatormodule$geolocation_origin_geolocation_origin" ON "emissioncalculatormodule$geolocation_origin_geolocation_origin" ("emissioncalculatormodule$geolocation_originid2" ASC,"emissioncalculatormodule$geolocation_originid1" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('0db58e37-7957-404b-a243-af965349d2db', 
'EmissionCalculatorModule.GeoLocation_Origin_GeoLocation_Origin', 
'emissioncalculatormodule$geolocation_origin_geolocation_origin', 
'1f180429-5cb3-4f72-a017-b1858aa2f239', 
'1f180429-5cb3-4f72-a017-b1858aa2f239', 
'emissioncalculatormodule$geolocation_originid1', 
'emissioncalculatormodule$geolocation_originid2', 
'idx_emissioncalculatormodule$geolocation_origin_geolocation_origin');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emissioncalculatormodule$geolocation_origin_geolocation_origin_emissioncalculatormodule$geolocation_originid1', 
'0db58e37-7957-404b-a243-af965349d2db', 
'48eef615-2897-348e-8a77-423c118215a0');
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
 VALUES ('1e1f4682-79b2-4757-96f0-0cb23d7eec75', 
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
'1e1f4682-79b2-4757-96f0-0cb23d7eec75', 
'b6056c7d-1fd9-37ba-beea-ae7efa33c7d7');
DROP TABLE "7f06ef248a8b468cbd007b4e62d15a76";
DROP TABLE "7c38125eef6146ce846d26c3c97ed20f";
DROP TABLE "21dbf35a97254cb783cd7c39470dabd3";
DROP TABLE "c5721a5417914d4abd3bb023bb49b1aa";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210329 21:26:40';
