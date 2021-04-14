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
 VALUES ('82fb4991-7dd6-4568-a1b4-09ab0808e270', 
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
'82fb4991-7dd6-4568-a1b4-09ab0808e270', 
'13e390f6-b7e0-31ae-9161-010413a92081');
CREATE TABLE "emissioncalculatormodule$geolocation_destination_geolocation_destination" (
	"emissioncalculatormodule$geolocation_destinationid1" BIGINT NOT NULL,
	"emissioncalculatormodule$geolocation_destinationid2" BIGINT NOT NULL,
	PRIMARY KEY("emissioncalculatormodule$geolocation_destinationid1","emissioncalculatormodule$geolocation_destinationid2"),
	CONSTRAINT "uniq_emissioncalculatormodul$geolocation_destination_geolocation_destination_emissioncalculatormodule$geolocation_destinationid1" UNIQUE ("emissioncalculatormodule$geolocation_destinationid1"));
CREATE INDEX "idx_emissioncalculatormodule$geolocation_destination_geolocation_destination" ON "emissioncalculatormodule$geolocation_destination_geolocation_destination" ("emissioncalculatormodule$geolocation_destinationid2" ASC,"emissioncalculatormodule$geolocation_destinationid1" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('702e0824-95d2-4121-b714-6362daa4b921', 
'EmissionCalculatorModule.GeoLocation_Destination_GeoLocation_Destination', 
'emissioncalculatormodule$geolocation_destination_geolocation_destination', 
'd819a01e-35d8-46d4-a156-9140970da623', 
'd819a01e-35d8-46d4-a156-9140970da623', 
'emissioncalculatormodule$geolocation_destinationid1', 
'emissioncalculatormodule$geolocation_destinationid2', 
'idx_emissioncalculatormodule$geolocation_destination_geolocation_destination');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emissioncalculatormodul$geolocation_destination_geolocation_destination_emissioncalculatormodule$geolocation_destinationid1', 
'702e0824-95d2-4121-b714-6362daa4b921', 
'9ba59a02-132d-38ad-bbd9-45480888c6f9');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210329 20:57:15';
