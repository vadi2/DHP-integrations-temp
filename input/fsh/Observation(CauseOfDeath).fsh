Profile: ObservationCauseOfDeath
Parent: Observation
Id: observation-cause-of-death
Title: "Cause of Death Observation Profile for Uzbekistan Healthcare System"
Description: "Profile for recording the cause of death in the healthcare system of Uzbekistan."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^date = "2025-08-26"
* ^publisher = "Uzinfocom"

* code MS
* code ^short = "Type of observation (code / type)."
// * code from http://hl7.org/fhir/ValueSet/observation-codes

* status MS
* status from https://hl7.org/fhir/ValueSet/observation-status

* subject MS
* subject ^short = "The decedent."
* subject only Reference(Patient)

* performer MS
* performer only Reference(PractitionerRole)
* performer ^short = "Certifying physician."

* effectiveDateTime MS
  * valueDateTime MS
  * valueDateTime ^short = " When cause was recorded."
* effectiveDateTime ^short = "Date/Time of Death."  