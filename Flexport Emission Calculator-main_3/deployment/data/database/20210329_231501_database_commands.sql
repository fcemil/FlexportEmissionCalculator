ALTER TABLE "emissioncalculatormodule$geolocation_origin_geolocation_origin" DROP CONSTRAINT "uniq_emissioncalculatormodule$geolocation_origin_geolocation_origin_emissioncalculatormodule$geolocation_originid1";
DROP INDEX "idx_emissioncalculatormodule$geolocation_origin_geolocation_origin";
ALTER TABLE "emissioncalculatormodule$geolocation_origin_geolocation_origin" RENAME TO "34cd16352aff438f80926d08c8721141";
ALTER TABLE "emissioncalculatormodule$geolocation_origin_order_information" DROP CONSTRAINT "uniq_emissioncalculatormodule$geolocation_origin_order_information_emissioncalculatormodule$geolocation_originid";
DROP INDEX "idx_emissioncalculatormodule$geolocation_origin_order_information";
ALTER TABLE "emissioncalculatormodule$geolocation_origin_order_information" RENAME TO "f95239554dc34f948028d9130a250d2b";
ALTER TABLE "emissioncalculatormodule$geolocation_destination_order_information" DROP CONSTRAINT "uniq_emissioncalculatormodule$geolocation_destination_order_information_emissioncalculatormodule$geolocation_destinationid";
DROP INDEX "idx_emissioncalculatormodule$geolocation_destination_order_information";
ALTER TABLE "emissioncalculatormodule$geolocation_destination_order_information" RENAME TO "9564571b98b14ee290a8bef7ca6112d7";
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '0db58e37-7957-404b-a243-af965349d2db';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$geolocation_origin_geolocation_origin_emissioncalculatormodule$geolocation_originid1' AND "column_id" = '48eef615-2897-348e-8a77-423c118215a0';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = '94dad4c0-3421-4eae-96b3-3071c12c02c4';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$geolocation_origin_order_information_emissioncalculatormodule$geolocation_originid' AND "column_id" = '09213eb7-26f8-3f85-9a98-a56ba8847338';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'a42f0e17-f1b1-42f6-bea1-e9b0625361ff';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$geolocation_destination_order_information_emissioncalculatormodule$geolocation_destinationid' AND "column_id" = '022e8fef-4ed1-3cff-a1d5-25f350b83695';
DROP TABLE "34cd16352aff438f80926d08c8721141";
DROP TABLE "f95239554dc34f948028d9130a250d2b";
DROP TABLE "9564571b98b14ee290a8bef7ca6112d7";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210329 23:15:01';
