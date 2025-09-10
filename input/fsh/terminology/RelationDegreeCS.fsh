CodeSystem: RelationDegreeCS
Id: relation-degree-cs
Title: "Relation Degree translation in Russian and English"
Description: "Code system for Relation Degree in Uzbekistan healthcare system"
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/relation-degree-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

* #emdoc-0005-0001 "ona"
  * ^designation[0].language = #en
  * ^designation[=].value = "mother"
  * ^designation[+].language = #ru
  * ^designation[=].value = "мать"
* #emdoc-0005-0002 "ota"
  * ^designation[0].language = #en
  * ^designation[=].value = "father"
  * ^designation[+].language = #ru
  * ^designation[=].value = "отец"
* #emdoc-0005-0003 "vasiy"
  * ^designation[0].language = #en
  * ^designation[=].value = "guardian"
  * ^designation[+].language = #ru
  * ^designation[=].value = "опекун"
* #emdoc-0005-0004 "aka/uka"
  * ^designation[0].language = #en
  * ^designation[=].value = "brother"
  * ^designation[+].language = #ru
  * ^designation[=].value = "брат"
* #emdoc-0005-0005 "opa/singil"
  * ^designation[0].language = #en
  * ^designation[=].value = "sister"
  * ^designation[+].language = #ru
  * ^designation[=].value = "сестра"
* #emdoc-0005-0006 "boshqa qarindosh"
  * ^designation[0].language = #en
  * ^designation[=].value = "other relative"
  * ^designation[+].language = #ru
  * ^designation[=].value = "другой родственник"