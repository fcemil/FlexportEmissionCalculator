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
 VALUES ('b075f475-dc07-4325-a318-95404289948e', 
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
'b075f475-dc07-4325-a318-95404289948e', 
'f7b46f41-1cb5-348d-9b05-d968ed205bce');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210329 21:16:06';
