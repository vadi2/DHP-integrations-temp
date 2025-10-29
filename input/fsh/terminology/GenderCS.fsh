CodeSystem: GenderCS
Id: gender-cs
Title: "Official genders lis from FHIR CodeSystem"
Description: "Actual values ​​of gender elements in FHIR"
* insert SupplementCodeSystem(gender-cs, $gender, 5.0.0)

* #male
  * ^designation[0].language = #uz
  * ^designation[=].value = "Erkak"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мужчина"
* #famale
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ayol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Женщина"
* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniqlanmagan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не определён"