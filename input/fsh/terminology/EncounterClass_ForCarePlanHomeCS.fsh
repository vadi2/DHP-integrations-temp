CodeSystem: EncounterClass_ForCareplanHomeCS
Id: encounter-class-for-careplan-home-cs
Title: "CarePlan Encounter Class (Uzbekistan only)"
Description: "Local Encounter Class codes for Uzbekistan healthcare system"
* ^url = "https://terminology.dhp.uz/CodeSystem/encounter-class-for-careplan-home-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

* #emdoc-0006-0001 "sanatoriy"
  * ^designation[0].language = #en
  * ^designation[=].value = "sanatorium"
  * ^designation[+].language = #ru
  * ^designation[=].value = "санаторий"
* #emdoc-0006-0002 "boshqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "другое"