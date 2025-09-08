ValueSet: EncounterClass_ForCareplanVS
Id: encounter-class-for-careplan-vs
Title: "Encounter Class for Careplan translation in Russian and Uzbek"
Description: "Value set for Encounter Class for Careplan in Uzbekistan healthcare system"
* ^url = "https://terminology.dhp.uz/ValueSet/encounter-class-for-careplan-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterClass_ForCareplanCS)

* include $v3-ActCode#AMB
* include $v3-ActCode#IMP
* include encounter-class-for-careplan-cs#emdoc-0006-0001
* include encounter-class-for-careplan-cs#emdoc-0006-0002