CodeSystem: CarePlanBelongingCS
Id: care-plan-belonging-cs
Title: "Care plan belonging translation in Russian and English"  
Description: "Care plan belonging code system for Uzbekistan healthcare system"
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-belonging-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

* #emdoc-0003-0001 "shahar aholisi"
  * ^designation[0].language = #en
  * ^designation[=].value = "urban population"
  * ^designation[+].language = #ru
  * ^designation[=].value = "городская принадлежность"
* #emdoc-0003-0002 "qishloq aholisi"
  * ^designation[0].language = #en
  * ^designation[=].value = "rural population"
  * ^designation[+].language = #ru
  * ^designation[=].value = "население кишлака"