Profile: SickLeaveObservation
Parent: Observation
Id: sickleave-observation
Title: "Sick Leave Observation"
Description: "Observation profile linked to SickLeave CarePlan."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^date = "2025-09-09"
* ^publisher = "Uzinfocom"

* basedOn 0..* MS
* basedOn only Reference(CarePlan)
* basedOn ^short = "Связь с CarePlan"

* code 1..1 MS
* code = http://snomed.info/sct#224459001 "On sick leave from work"

* value[x] 0..1
* value[x] only CodeableConcept or boolean or dateTime
* value[x] ^short = "Тип компонента (код, булево, дата/время)"
