Extension: CareForRelatedPerson
Id: care-for-relatedperson
Title: "Care For Related Person Extension"
Description: "Information about the related person for caring for the child/family member"

* extension contains
    name 0..1 MS and
    gender 0..1 MS and
    gender-other 0..1 and
    birthdate 0..1 MS

* extension[name].value[x] only HumanName
* extension[gender].value[x] only CodeableConcept
* extension[gender].value[x] from https://terminology.medcore.uz/ValueSet/gender
* extension[gender-other].value[x] only CodeableConcept
* extension[gender-other].value[x] from https://terminology.medcore.uz/ValueSet/gender-other-vs
* extension[birthdate].value[x] only date