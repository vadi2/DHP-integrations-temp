Profile: EncounterDeath
Parent: Encounter
Id: encounter-death
Title: "Death Encounter Profile"
Description: "Profile for registration of patient deaths in the healthcare system of Uzbekistan."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^date = "2025-08-26"
* ^publisher = "Uzinfocom"

* status MS
* status ^short = "Finished"

* class MS
* class ^short = "Encounter type (e.g., emergency, inpatient)"
* class from http://terminology.hl7.org/ValueSet/encounter-class (required)

* serviceType MS
* serviceType from http://terminology.hl7.org/ValueSet/encounter-class (required)

* subject MS
* subject only Reference(Patient)
* subject ^short = "Reference to the deceased."

* participant MS
  * actor MS
  * actor only Reference(PractitionerRole)
  * actor ^short = "The individual or service participating in the encounter."
  * type MS
  * type only CodeableConcept
  * type from http://hl7.org/fhir/ValueSet/encounter-participant-type (required)
  * type ^short = "Role of participant in encounter."

* extension contains DeathPlace named deathPlace 0..1
