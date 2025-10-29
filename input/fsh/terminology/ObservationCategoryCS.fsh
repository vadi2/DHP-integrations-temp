CodeSystem: ObservationCategoryCS
Id: observation-category-cs
Title: "Birth's Observation category Codesystem"
Description: "Birth Observation Category code view"
* insert SupplementCodeSystemDraft(observation-category-cs, $observation-category, 5.0.0)

* #vital-signs
  * ^designation[0].language = #uz
  * ^designation[=].value = "Hayotiy belgilar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Жизненно важные показатели"

* #survey
  * ^designation[0].language = #uz
  * ^designation[=].value = "So‘rovnoma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Анкетирование"