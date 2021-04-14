ALTER TABLE "emissioncalculatormodule$order_information" DROP COLUMN "originlatitutde";
ALTER TABLE "emissioncalculatormodule$order_information" DROP COLUMN "destinationlatitude";
ALTER TABLE "emissioncalculatormodule$order_information" DROP COLUMN "destinationlongitude";
ALTER TABLE "emissioncalculatormodule$order_information" DROP COLUMN "volume";
ALTER TABLE "emissioncalculatormodule$order_information" DROP COLUMN "teu";
ALTER TABLE "emissioncalculatormodule$order_information" DROP COLUMN "originlongitude";
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '077749cd-95bf-4748-bc2d-da4605a09b91';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '36b4a758-c185-4906-b31f-50d829f64b55';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '4f00daae-986e-48a3-87c0-2e3e3c3d50b2';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '76f53010-ad0e-470f-bd1d-db8a1f0b56a2';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'a2d96148-1c85-4283-a830-11f7c1822e32';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'ff710b3a-b77e-4630-82b5-3e9ecda4a8c9';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210401 13:51:56';
