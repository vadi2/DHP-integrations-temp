Profile: UZIntegrationsProcedure
Parent: Procedure
Id: uz-integrations-procedure
Title: "UZ Integrations Procedure"
Description: "General-purpose procedure profile for Uzbekistan clinical procedures"
* ^status = #active
* status MS
* code 1..1 MS
* subject 1..1 MS
* encounter MS
* occurrence[x] MS
* occurrencePeriod MS
* performer MS
* performer.actor MS
* identifier MS
* bodySite MS
* used MS
* used.concept MS
* note MS

Mapping: UZIntegrationsProcedureToForm011
Id: uz-form-011
Title: "Procedure to UZ Form 011 Mapping"
Source: UZIntegrationsProcedure
Target: "https://dhp.uz/fhir/integrations/StructureDefinition/UzForm011"
* identifier.value -> "UZForm011.seansRaqam"
* code -> "UZForm011.dializTuri"
* occurrencePeriod.start -> "UZForm011.dializBoshlanishi"
* occurrencePeriod.end -> "UZForm011.dializTugashi"
* used.concept.text -> "UZForm011.dializator / UZForm011.magistral / UZForm011.ignalar"
* bodySite.text -> "UZForm011.fistula"
