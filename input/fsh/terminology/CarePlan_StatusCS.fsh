CodeSystem: CarePlanStatusCS
Id: care-plan-status-cs
Title: "Sick Leave Category translation in Russian and English"  
Description: "Code system for Sick Leave categories in Uzbekistan"
* ^url = "https://terminology.dhp.uz/CodeSystem/care-plan-status-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $care-plan-status
* ^status = #active
* ^language = #en

* #draft
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Черновик"
* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Открыт"
* #revoked
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faolsizlantirilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Деактивирован"
* #completed
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yopiq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Закрыт"
* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено по ошибке"