ValueSet: EncounterClass_ForCareplanVS
Id: encounter-class-for-careplan-vs
Title: "Encounter Class for CarePlan translations"
Description: "ValueSet combining HL7 ActCode supplement and Uzbekistan local codes"
* ^url = "https://terminology.dhp.uz/ValueSet/encounter-class-for-careplan-vs"
* ^status = #active
* ^experimental = true

* include $v3-ActCode#AMB
* include $v3-ActCode#IMP
* include $encounter-CareplanHome#emdoc-0006-0001
* include $encounter-CareplanHome#emdoc-0006-0002