CREATE TABLE "emissioncalculatormodule$geolocation_origin_order_information" (
	"emissioncalculatormodule$geolocation_originid" BIGINT NOT NULL,
	"emissioncalculatormodule$order_informationid" BIGINT NOT NULL,
	PRIMARY KEY("emissioncalculatormodule$geolocation_originid","emissioncalculatormodule$order_informationid"),
	CONSTRAINT "uniq_emissioncalculatormodule$geolocation_origin_order_information_emissioncalculatormodule$geolocation_originid" UNIQUE ("emissioncalculatormodule$geolocation_originid"));
CREATE INDEX "idx_emissioncalculatormodule$geolocation_origin_order_information" ON "emissioncalculatormodule$geolocation_origin_order_information" ("emissioncalculatormodule$order_informationid" ASC,"emissioncalculatormodule$geolocation_originid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('94dad4c0-3421-4eae-96b3-3071c12c02c4', 
'EmissionCalculatorModule.GeoLocation_Origin_Order_Information', 
'emissioncalculatormodule$geolocation_origin_order_information', 
'1f180429-5cb3-4f72-a017-b1858aa2f239', 
'37e75cbc-1ed4-4687-8508-2d7e03c2b491', 
'emissioncalculatormodule$geolocation_originid', 
'emissioncalculatormodule$order_informationid', 
'idx_emissioncalculatormodule$geolocation_origin_order_information');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emissioncalculatormodule$geolocation_origin_order_information_emissioncalculatormodule$geolocation_originid', 
'94dad4c0-3421-4eae-96b3-3071c12c02c4', 
'09213eb7-26f8-3f85-9a98-a56ba8847338');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210329 21:28:51';
