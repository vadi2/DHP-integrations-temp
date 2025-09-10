CodeSystem: CarePlanStatusHomeCS
Id: care-plan-status-home-cs
Title: "Care plan status translation in Russian and English"  
Description: "Care plan status code system for Uzbekistan healthcare system"
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-status-home-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

* #emdoc-0002-0001 "Uzaytirilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Extended"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Продлен"
* #emdoc-0002-0002 "TMEKga yuborilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Sent to MSEC"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Направлен во ВТЭК"
* #emdoc-0002-0003 "TMEK ma’lumotlari bilan to‘ldirilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Supplemented with MSEC data"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дополнен данными ВТЭК"
* #emdoc-0002-0004 "Tasdiqlashga yuborilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Sent for approval"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отправлен на утверждение"
* #emdoc-0002-0005 "Qaytarilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Returned"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Возвращен"
    