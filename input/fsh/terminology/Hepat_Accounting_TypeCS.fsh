CodeSystem: HepatAccauntingTypeCS  //hepat_accounting-type
Id: hepat-accouting-type-cs
Title: "Hepatitis Accounting Type Code System"  
Description: "Directory of Hepatitis Accounting Types"
* ^url = "https://terminology.dhp.uz/CodeSystem/hepat-accouting-type-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

* #hepat-0006-00001 "Gepatit B"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hepatitis B"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гепатит B"
  
* #hepat-0006-00002 "Gepatit C"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hepatitis C"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гепатит C"