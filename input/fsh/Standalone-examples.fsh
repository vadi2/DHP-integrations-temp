// This file contains only example instances to help enforce referential integrity within the profiles
// As soon as a profile for an instance is created, the instance should be removed from this file

Instance: example-patient
InstanceOf: Patient
Usage: #example
Title: "Example patient"
Description: "Example of a patient"
* name
  * family = "Ibragimov"
  * given = "Alisher"

Instance: example-practitioner
InstanceOf: Practitioner
Usage: #example
Title: "Example practitioner"
Description: "Example of a practitioner"
* name
  * family = "Karimova"
  * given = "Dilorom"
