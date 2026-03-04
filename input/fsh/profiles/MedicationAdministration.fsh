Profile: UZIntegrationsMedicationAdministration
Parent: MedicationAdministration
Id: uz-integrations-medication-administration
Title: "UZ Integrations MedicationAdministration"
Description: "General-purpose medication administration profile for Uzbekistan clinical records"
* ^status = #active
* status MS
* medication MS
* subject 1..1 MS
* encounter MS
* occurence[x] MS
* performer MS
* performer.actor MS
* dosage MS
* dosage.dose MS
* dosage.text MS
* note MS

Mapping: UZIntegrationsMedicationAdminToForm011
Id: uz-form-011
Title: "MedicationAdministration to UZ Form 011 Mapping"
Source: UZIntegrationsMedicationAdministration
Target: "https://dhp.uz/fhir/integrations/StructureDefinition/uz-form-011"
* medication.concept.text -> "UZForm011.asosiyDavolash"
* note.text -> "UZForm011.qoshimchaDavolash"
