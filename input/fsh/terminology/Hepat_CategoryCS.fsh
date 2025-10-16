CodeSystem: HepatCategoryCS // hepat-category
Id: hepat-category-cs
Title: "Hepatitis Interpretation Code System"  
Description: "Directory of Hepatitis Interpretation Categories"
* ^url = "https://terminology.dhp.uz/CodeSystem/hepat-category-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

// Категория исследования

* #hepat.0001 "PZR tahlil (Polimeraza zanjir reaktsiyasi - PCR)"
  * ^designation[0].language = #en
  * ^designation[=].value = "PCR analysis"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ПЦР анализ"

* #hepat.0002 "Ekspress test"
  * ^designation[0].language = #en
  * ^designation[=].value = "Rapid test"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Экспресс тест"

* #hepat.0003 "Immunoferment tahlil (IFT)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Enzyme immunoassay"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Иммуноферментный анализ"

* #hepat.0004 "Prezidentning 243-sonli qarordagi tahlil"
  * ^designation[0].language = #en
  * ^designation[=].value = "Analysis of Presidential Resolution 243"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Анализ ПП-243"

* #hepat.0005 "UZI (ultratovush tekshiruvi)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Ultrasound (ultrasonography)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "УЗИ (ультразвуковое исследование)"