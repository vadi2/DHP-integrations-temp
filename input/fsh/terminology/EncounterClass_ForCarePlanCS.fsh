CodeSystem: EncounterClass_ForCareplanCS
Id: encounter-class-for-careplan-cs
Title: "Encounter Class for Careplan translation in Russian and Uzbek"
Description: "Code system for Encounter Class for Careplan in Uzbekistan healthcare system"
* ^url = "https://terminology.dhp.uz/ValueSet/encounter-class-for-careplan-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $v3-ActCode
//* ^status = #active
* ^language = #en

* #AMB
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ambulator"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Амбулаторный"
* #IMP
  * ^designation[0].language = #uz
  * ^designation[=].value = "Statsionar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Стационарный"