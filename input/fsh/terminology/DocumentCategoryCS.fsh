CodeSystem: DocumentCategoryCS
Id: document-category-cs
Title: "Document category"
Description: "Categories for clinical documents and services in Uzbekistan integrations"
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/document-category-cs"
* ^experimental = true
* ^caseSensitive = true
* ^language = #uz

* #mserv-0005-00001 "Mehnatga layoqatsizlik varaqasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Sick leave"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лист нетрудоспособности"
* #mserv-0005-00002 "Haydovchilik guvohnomasi olish uchun tibbiy ma'lumotnoma"
  * ^designation[0].language = #en
  * ^designation[=].value = "Driver License Medical Certificate"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская справка для получения водительского удостоверения"
* #mserv-0005-00003 "Tibbiy ma'lumotnoma"
  * ^designation[0].language = #en
  * ^designation[=].value = "Medical Certificate"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинская справка"
