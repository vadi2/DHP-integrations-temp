CodeSystem: EncounterClass_ForCareplanCS
Id: encounter-class-for-careplan-cs
Title: "Encounter Class for CarePlan translation in Russian and Uzbek"
Description: "Supplement to v3-ActCode with translations for Uzbekistan"
* ^url = "https://terminology.dhp.uz/CodeSystem/encounter-class-for-careplan-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $v3-ActCode
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