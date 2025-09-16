Extension: DeathPlace
Id: death-place
Title: "Death Place Extension"
Description: "Extension to capture the place of death, including type, location, and service provider."
* ^context[0].type = #element
* ^context[0].expression = "Observation"

* extension contains deathPlaceType 1..1
* extension[deathPlaceType] ^short = "Type which is that death place type (home, street, hospital etc)"
* extension[deathPlaceType].valueCodeableConcept 1..1
* extension[deathPlaceType].valueCodeableConcept from http://termenology.medcore.uz/ValueSet/DeathPlace-type (required)

* extension contains deathLocation 0..*
* extension[deathLocation] ^short = "Place of death (hospital, home, etc.)"
* extension[deathLocation].valueReference only Reference(Location)

* extension contains serviceProvider 0..1
* extension[serviceProvider] ^short = "Health facility issuing certificate"
* extension[serviceProvider].valueReference only Reference(Organization)
