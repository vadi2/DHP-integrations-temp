CodeSystem: EncounterClass_ForCareplanHomeCS
Id: encounter-class-for-careplan-home-cs
Title: "Care plan reason code system for Uzbekistan healthcare system"  
Description: "Code system for Care plan reason in Uzbekistan healthcare system"
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