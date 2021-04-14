ALTER TABLE "emissioncalculatormodule$calculationinfo_company" DROP CONSTRAINT "uniq_emissioncalculatormodule$calculationinfo_company_emissioncalculatormodule$calculationinfoid";
DROP INDEX "idx_emissioncalculatormodule$calculationinfo_company_emissioncalculatormodule$company_emissioncalculatormodule$calculationinfo";
ALTER TABLE "emissioncalculatormodule$calculationinfo" RENAME TO "emissioncalculatormodule$calculation";
ALTER TABLE "emissioncalculatormodule$calculationinfo_company" RENAME TO "emissioncalculatormodule$calculation_company";
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'EmissionCalculatorModule.Calculation', 
"table_name" = 'emissioncalculatormodule$calculation', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = '37e75cbc-1ed4-4687-8508-2d7e03c2b491';
ALTER TABLE "emissioncalculatormodule$calculation_company" ALTER COLUMN "emissioncalculatormodule$calculationinfoid" RENAME TO "emissioncalculatormodule$calculationid";
CREATE INDEX "idx_emissioncalculatormodule$calculation_company_emissioncalculatormodule$company_emissioncalculatormodule$calculation" ON "emissioncalculatormodule$calculation_company" ("emissioncalculatormodule$companyid" ASC,"emissioncalculatormodule$calculationid" ASC);
ALTER TABLE "emissioncalculatormodule$calculation_company" ADD CONSTRAINT "uniq_emissioncalculatormodule$calculation_company_emissioncalculatormodule$calculationid" UNIQUE ("emissioncalculatormodule$calculationid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emissioncalculatormodule$calculationinfo_company_emissioncalculatormodule$calculationinfoid' AND "column_id" = '86916fba-ef68-3e9d-ba4a-6388ad07f948';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emissioncalculatormodule$calculation_company_emissioncalculatormodule$calculationid', 
'668935a3-5296-4a98-96d2-58b5e2829ef9', 
'86916fba-ef68-3e9d-ba4a-6388ad07f948');
UPDATE "mendixsystem$association"
 SET "association_name" = 'EmissionCalculatorModule.Calculation_Company', 
"table_name" = 'emissioncalculatormodule$calculation_company', 
"parent_entity_id" = '37e75cbc-1ed4-4687-8508-2d7e03c2b491', 
"child_entity_id" = '5b91194c-06c1-4c0b-8b81-4de1964e77a7', 
"parent_column_name" = 'emissioncalculatormodule$calculationid', 
"child_column_name" = 'emissioncalculatormodule$companyid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_emissioncalculatormodule$calculation_company_emissioncalculatormodule$company_emissioncalculatormodule$calculation'
 WHERE "id" = '668935a3-5296-4a98-96d2-58b5e2829ef9';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210401 20:40:33';
