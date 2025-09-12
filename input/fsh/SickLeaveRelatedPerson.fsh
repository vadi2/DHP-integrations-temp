Profile: SickLeaveRelatedPerson
Parent: RelatedPerson
Id: sick-leave-relatedperson
Title: "Sick Leave Related Person"
Description: "Profile for related persons in sick leave cases"
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-relatedperson"
* ^status = #draft
* ^experimental = true

* name 0..1 MS
* gender 0..1 MS
* gender from https://terminology.medcore.uz/ValueSet/gender (required)
* birthDate 0..1 MS