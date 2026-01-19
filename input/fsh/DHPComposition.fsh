Profile: DHPComposition
Parent: Composition
Id: dhp-composition
Title: "DHP Composition"
Description: "DHP Composition profile, used to represent clinical documents in Uzbekistan integrations"
* ^experimental = true
* ^status = #active
* ^date = "2025-01-19"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains formNumber 0..1 MS
* identifier[formNumber].system = "https://dhp.uz/fhir/integrations/sid/doc/uz/form-number"
* identifier[formNumber].value 1..1 MS
* identifier[formNumber] ^short = "Official form number (e.g., 066, 083, 086)"
* identifier[formNumber] ^definition = "The official form number when the document maps to a standardized form. Not all documents have a form number (e.g., TB system documents)."

* status MS

* type 1..1 MS

* category MS
* category from DocumentCategoryVS (extensible)
* category ^short = "Service/document type code (e.g., mserv-0005-00001)"

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* date 1..1 MS

* author 1..* MS
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)

* custodian MS
* custodian only Reference(UZCoreOrganization)

* attester MS
* event MS

Instance: example-composition-sick-leave
InstanceOf: DHPComposition
Usage: #example
Title: "Example sick leave document"
Description: "Example of a sick leave document composition"
* identifier[formNumber].value = "095"
* status = #final
* type = $loinc#51851-4 "Administrative note"
* category = document-category-cs#mserv-0005-00001 "Mehnatga layoqatsizlik varaqasi"
* subject = Reference(example-patient)
* date = "2025-01-15T10:30:00+05:00"
* author = Reference(example-practitioner)
* title = "Mehnatga layoqatsizlik varaqasi"
